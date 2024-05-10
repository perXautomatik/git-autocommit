scn ArmourAbsorbsDamageUDF

int bPowerArmour
int iArmourClass
int iArmourToUse
int iLimbToHeal
int iHitLocation
float fArmourHP
float fCurHP
float fCondDamMult
float fDamageAmount
float fLimbDamage
float fReductionMult
ref rSourceRef
ref rArmourToUse

begin Function {fDamageAmount, rSourceRef}

	; Do nothing if the health damage wasn't caused by an actor (e.g. fall damage)
	if rSourceRef == 0
		return 
	endif

	; Check where the player was hit
	; "[GetHitLocation] might work outside of the proper OnHit event, because hit information lingers a little bit" - Demorome
	iHitLocation = GetHitLocation
	if iHitLocation == 1
		iArmourToUse = 0 ; Head
		; Print "Hit location: Head"
	else
		iArmourToUse = 2 ; Body
		; Print "Hit location: Body"
	endif
		
	; Do nothing if the damaged body part is unarmoured
	rArmourToUse = Player.GetEquippedObject (iArmourToUse)
	; Print "rArmourToUse: " + $rArmourToUse
	if rArmourToUse == 0
		return
	endif
	
	; Do nothing if the armour is completely broken
	fArmourHP = Player.GetEquippedCurrentHealth (iArmourToUse)
	; Print "fArmourHP: " + $fArmourHP
	if fArmourHP == 0
		return
	endif

	; Limb damage stuff. See Actor Value Codes page on GECK Wiki
	fLimbDamage = GetHitLimbDamage
	; Print "GetHitLimbDamage: " + $fLimbDamage
	if iHitLocation == 0 ; Torso
		iLimbToHeal = 25
		; Print "Hit body part: Torso"
	elseif iHitLocation == 1 ; Head
		iLimbToHeal = 26
		; Print "Hit body part: Head"
	elseif iHitLocation == 3 ; Left arm
		iLimbToHeal = 27
		; Print "Hit body part: Left arm"
	elseif iHitLocation == 5 ; Right arm
		iLimbToHeal = 28
		; Print "Hit body part: Right arm"
	elseif iHitLocation == 7 ; Left leg
		iLimbToHeal = 29
		; Print "Hit body part: Left leg"
	elseif iHitLocation == 10 ; Right leg
		iLimbToHeal = 30
		; Print "Hit body part: Right leg"
	endif

	; Set some useful values
	bPowerArmour = IsPowerArmor rArmourToUse
	iArmourClass = GetArmorClass rArmourToUse
	fCurHP = Player.GetAV Health
	
	if iArmourClass == 1
		fReductionMult = ArmourAbsorbsDamageQUEST.fReductionMultLight
		fCondDamMult = ArmourAbsorbsDamageQUEST.fCondDamMultLight
		
	elseif iArmourClass == 2
		fReductionMult = ArmourAbsorbsDamageQUEST.fReductionMultMed
		fCondDamMult = ArmourAbsorbsDamageQUEST.fCondDamMultMed
		
	elseif bPowerArmour == 0
		fReductionMult = ArmourAbsorbsDamageQUEST.fReductionMultHeavy
		fCondDamMult = ArmourAbsorbsDamageQUEST.fCondDamMultHeavy
		
	else
		fReductionMult = ArmourAbsorbsDamageQUEST.fReductionMultPower
		fCondDamMult = ArmourAbsorbsDamageQUEST.fCondDamMultPower
		
	endif

	; Apply damage absorption
	if fArmourHP < (fDamageAmount*fCondDamMult)
		; Print "Armour DOES NOT have enough condition to take the full blow"
		; Armour DOES NOT have enough condition to take the full blow
		Player.RestoreAV Health ( fDamageAmount*fReductionMult * fArmourHP/(fDamageAmount*fCondDamMult) )
		Player.RestoreAV (iLimbToHeal) ( fLimbDamage*fReductionMult * fArmourHP/(fLimbDamage*fCondDamMult) )
		Player.SetEquippedCurrentHealth 0 (iArmourToUse)

	else
		; Print "Armour DOES have enough condition to take the full blow"
		; Armour DOES have enough condition to take the full blow
		Player.RestoreAV Health (fDamageAmount*fReductionMult)
		Player.RestoreAV (iLimbToHeal) (fLimbDamage*fReductionMult)
		Player.SetEquippedCurrentHealth (fArmourHP + fDamageAmount*fCondDamMult) (iArmourToUse)

	endif

end
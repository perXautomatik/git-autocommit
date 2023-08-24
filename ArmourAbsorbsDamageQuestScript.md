scn ArmourAbsorbsDamageQuestSCRIPT

begin MenuMode 4

	if GetGameRestarted || GetGameLoaded

		float fReductionMultLight = GetINIFloat "Multipliers:fReductionMultLight" "Armour Absorbs Damage - Redux.ini"
		float fReductionMultMed = GetINIFloat "Multipliers:fReductionMultMed" "Armour Absorbs Damage - Redux.ini"
		float fReductionMultHeavy = GetINIFloat "Multipliers:fReductionMultHeavy" "Armour Absorbs Damage - Redux.ini"
		float fReductionMultPower = GetINIFloat "Multipliers:fReductionMultPower" "Armour Absorbs Damage - Redux.ini"
		
		float fCondDamMultLight = GetINIFloat "Multipliers:fCondDamMultLight" "Armour Absorbs Damage - Redux.ini"
		float fCondDamMultMed = GetINIFloat "Multipliers:fCondDamMultMed" "Armour Absorbs Damage - Redux.ini"
		float fCondDamMultHeavy = GetINIFloat "Multipliers:fCondDamMultHeavy" "Armour Absorbs Damage - Redux.ini"
		float fCondDamMultPower = GetINIFloat "Multipliers:fCondDamMultPower" "Armour Absorbs Damage - Redux.ini"
		
		SetOnHealthDamageEventHandler ArmourAbsorbsDamageUDF 1 PlayerRef

	endif

end
ScriptName NVDLC03SinkSinkSCRIPT


; Talking Activator script for Sink
; TLS 01/19/2011
; SPW 02/24/11 	- Adding vars for HQ Buddy quest
; OMP 03/11/2011 	- Prevent the player from using the Sink until it's unlocked.
; ETB 03/24/11 		- Added gamemode start conversation routine (to get conversation to start directly after a message box pop-up).


Short bAwaitingInput;							; Message box variable (menumode).
Short bCallSinkBuddyUI;						; Message box variable (gamemode).
Short nButton;									; Which message box option the player has pressed.
Short bTalkAfterMessage

; Count variables for drink types
Short nMilkCount;
Short nNukaColaCount;
Short nWhiskeyCount;
Short nSunsetCount;
Short nSunsetNoFloatCount;
Short nSodaCount;
Short nScotchCount;
Short nEmptyBottleCount;


BEGIN OnLoad

	SetTalkingActivatorActor NVDLC03SinkSinkTalkerREF;

END


BEGIN OnActivate

	If ( IsActionRef Player == 1 )
		If ( NVDLC03DialogueHQBuddies.bSinkBuddyUnlocked == 1 )
			If ( Player.GetHasNote NVDLC03HQUpgradeSinkWaterNOTE == 1 )
				Player.RemoveNote NVDLC03HQUpgradeSinkWaterNOTE;
				TTWIntSinkWaterPuritier.Enable
				Set NVDLC03HQBuddy.iSink To 2;														; SPW
				Set NVDLC03DialogueHQBuddies.bSinkBuddyUpgraded To 1;
				ShowMessage NVDLC03HQSinkBuddyUpgradeMSG;
			EndIf
			If ( NVDLC03DialogueHQBuddies.bBuddiesTalk == 0 )
				ShowMessage NVDLC03HQBuddiesNoTalkMSG;
				Set bAwaitingInput To 1;
				ShowMessage NVDLC03HQSinkBuddyMSG;
			Else
				Set bTalkAfterMessage to 1;
			EndIf
		Else
			If ( Player.GetHasNote NVDLC03HQBuddySinkNOTE== 0 )
				If ( NVDLC03DialogueHQBuddies.bBuddiesTalk == 0 )
					ShowMessage NVDLC03HQBuddiesNoTalkMSG;
				EndIf
				ShowMessage NVDLC03HQBuddyLockedMSG;
			ElseIf ( Player.GetHasNote NVDLC03HQBuddySinkNOTE== 1 )
				Player.RemoveNote NVDLC03HQBuddySinkNOTE;
				TTWIntBathroomRef.enable
				Set NVDLC03HQBuddy.iSink To 1;														; SPW
				If ( NVDLC03DialogueHQBuddies.bBuddiesTalk == 0 )
					ShowMessage NVDLC03HQBuddiesNoTalkMSG;
				EndIf
				ShowMessage 	NVDLC03HQBuddyUnlockMSG;
				Set NVDLC03DialogueHQBuddies.bSinkBuddyUnlocked To 1;
				IncrementScriptedChallenge NVDLC03AchievementMakingFriends;	
				Set bTalkAfterMessage to 1;
			EndIf
		EndIf
	EndIf

END; onactivate


BEGIN GameMode

	If ( bCallSinkBuddyUI == 1 )
		Set bAwaitingInput To 1;
		ShowMessage NVDLC03HQSinkBuddyMSG;
		Set bCallSinkBuddyUI To 0;
	EndIf

	If ( bTalkAfterMessage == 1 )
		Set bTalkAfterMessage to 0;
		;SetTalkingActivatorActor NVDLC03SinkSinkTalkerREF;
		Activate;
	Endif

END; gamemode


BEGIN MenuMode 1001

	If ( bAwaitingInput == 1 )
		Set nButton To GetButtonPressed;

		If ( nButton > -1 )
			Set bAwaitingInput To 0;

			; -------------------------------------------------------------------	BUTTON 0 ----------------------------------------------	\/	; "Do Nothing"
			If ( nButton == 0 )
				Set nButton To -1;
				Return;
			; -------------------------------------------------------------------	BUTTON 1 ----------------------------------------------	\/ 	; "Fill empty bottles"
			ElseIf ( nButton == 1 )
				Set nButton To -1;	
				Set nMilkCount To Player.GetItemCount Milkbottle01;
				Set nNukaColaCount To Player.GetItemCount NukaColaBottle;
				Set nWhiskeyCount To Player.GetItemCount WhiskeyBottle01Empty01;
				Set nSunsetCount To Player.GetItemCount SSBottleEmpty;
				Set nSunsetNoFloatCount To Player.GetItemCount SSBottleEmptyNoFloat;
				Set nSodaCount To Player.GetItemCount SodaBottleEmpty01;
				Set nScotchCount To Player.GetItemCount ScotchBottle01Empty01;
				Set nEmptyBottleCount To ( nMilkCount + nNukaColaCount + nWhiskeyCount + nSunsetCount + nSunsetNoFloatCount + nSodaCount + nScotchCount  );
				Player.RemoveItem Milkbottle01 nMilkCount;
				Player.RemoveItem NukaColaBottle nNukaColaCount;
				Player.RemoveItem WhiskeyBottle01Empty01 nWhiskeyCount;
				Player.RemoveItem SSBottleEmpty nSunsetCount;
				Player.RemoveItem SSBottleEmptyNoFloat nSunsetNoFloatCount;
				Player.RemoveItem SodaBottleEmpty01 nSodaCount;
				Player.RemoveItem ScotchBottle01Empty01 nScotchCount;
				Player.AddItem WaterPurified nEmptyBottleCount;
			; -------------------------------------------------------------------	BUTTON 2 ----------------------------------------------	\/	; "Drink"
			ElseIf ( nButton == 2 )
				Set nButton To -1;
				NVDLC03DrinkSinkREF.Activate Player 1;
			EndIf
		EndIf
	Else
		Return;
	EndIf
	
END; menumode 1001
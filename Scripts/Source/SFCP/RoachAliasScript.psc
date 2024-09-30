Scriptname SFCP:RoachAliasScript extends ReferenceAlias

Quest Property SFBGS003_DialogueTAHQ Auto Const Mandatory
GlobalVariable Property SFBGS003_Bounties_Total Auto Const Mandatory

Event OnLoad()
	; SFCP Fix https://www.starfieldpatch.dev/issues/1130
	; Update this quest's instance of SFBGS003_Bounties_Total, so that Roach's dialogue displays correctly.
	SFBGS003_DialogueTAHQ.UpdateCurrentInstanceGlobal(SFBGS003_Bounties_Total)
EndEvent
;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Quests:QF_MQ_TutorialQuest_Misc06_0000118F Extends Quest Hidden Const

;BEGIN FRAGMENT Fragment_Stage_0010_Item_00
Function Fragment_Stage_0010_Item_00()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

Function Fragment_Stage_0010_Item_01()
; SFCP Fix - If all research projects are done, we just shut down the quest
; https://www.starfieldpatch.dev/issues/725
Debug.Trace("SFCP Fix - All research projects are complete, removing tutorial objective and shutting down quest: "+Self, 0)
Self.CompleteAllObjectives()
Self.Stop()
EndFunction

;BEGIN FRAGMENT Fragment_Stage_0100_Item_00
Function Fragment_Stage_0100_Item_00()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

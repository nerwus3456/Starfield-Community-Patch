Scriptname RIR03_QuestScript extends Quest

Keyword Property RI_Outfit_BusinessAttireKeyword Auto Const Mandatory
Keyword Property RI_Outfit_FCGuardAttireKeyword Auto Const Mandatory
Keyword Property RI_Outfit_UCGuardAttireKeyword Auto Const Mandatory
Keyword Property RI_Outfit_MiscGuardAttireKeyword Auto Const Mandatory
Keyword Property RI_Outfit_NeonGuardAttireKeyword Auto Const Mandatory
Keyword Property RIR03_Suit_Keyword Auto Const Mandatory

Int Property iStageToSet Auto Const Mandatory

Function CheckPlayer()
    Debug.Trace(Self + " Custom function called")
     
    Actor PlayerRef = Game.GetPlayer()
    
    ; SFCP Fix #735 - Added an additional keyword to this check to trigger the stage update for any flagged item
    If PlayerRef.WornHasKeyword(RI_Outfit_BusinessAttireKeyword) || PlayerRef.WornHasKeyword(RI_Outfit_FCGuardAttireKeyword) || PlayerRef.WornHasKeyword(RI_Outfit_UCGuardAttireKeyword) || PlayerRef.WornHasKeyword(RI_Outfit_NeonGuardAttireKeyword) || PlayerRef.WornHasKeyword(RI_Outfit_MiscGuardAttireKeyword) || PlayerRef.WornHasKeyword(RIR03_Suit_Keyword)
    Debug.Trace(Self + "Keyword check has passed")
          SetStage(iStageToSet)
    EndIf

EndFunction

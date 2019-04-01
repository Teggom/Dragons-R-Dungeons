Spell_Manager <- list()

.Spells <- read.csv("~/../Downloads/GameElementData - Spells.csv", stringsAsFactors = F)
Spell_Manager$Spells <- .Spells

# Given a spell and a stat, returns the value of that
# Does not apply it to a modifier
.Get_Spell_Buff <- function(Spell_Name, Stat_Name){
  row = Spell_Manager$Spells[Spell_Manager$Spells[,3]==Spell_Name,]
  return(row[,names(row)==Stat_Name])
}
Spell_Manager$Get_Buff <- .Get_Spell_Buff

.Make_Player_Magic_Classes <- function(){
  To_Return <- list(
    # name = list(level, exp_to_level)
    "Pyrokinesis" = list(0, 1),
    "Aquakinesis" = list(0, 1),
    "Psychrokinesis" = list(0, 1),
    "Aerokiensis" = list(0, 1),
    "Geokinesis" = list(0, 1),
    "Fulgarkinesis" = list(0, 1),
    "Etherkinesis" = list(0, 1),
    "Summoning" = list(0, 1),
    "Chronokinesis" = list(0, 1),
    "Gyrokinesis" = list(0, 1),
    "Botanokinesis" = list(0, 1),
    "Necrokinesis" = list(0, 1),
    "Toxikinesis" = list(0, 1),
    "Umbrakinesis" = list(0, 1),
    "Photokinesis" = list(0, 1),
    "Alysidakinesis" = list(0, 1),
    "Sanctikinesis" = list(0, 1),
    "Destruction" = list(0, 1),
    "Demonokinesis" = list(0, 1),
    "Dracokinesis" = list(0, 1),
    "Construction" = list(0, 1),
    "Arachnikinesis" = list(0, 1),
    "Xothkinesis" = list(0, 1),
    "Synthokinesis" = list(0, 1),
    "Edhelkinesis" = list(0, 1),
    "Magmakinesis" = list(0, 1),
    "Machokinesis" = list(0, 1),
    "Fortunakinesis" = list(0, 1),
    "Vocatuskinesis" = list(0, 1)
  )
  return(To_Return)
}
Spell_Manager[["Create"]] <- .Make_Player_Magic_Classes

.print_spells <- function(Spell_List){
  for(class in names(Spell_List)){
    if(Spell_List[[class]][[1]] > 0){
      cat(class, "\tLevel:", Spell_List[[class]][[1]], "\n")
    }
  }
}
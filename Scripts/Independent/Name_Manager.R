Create_Name <- list()
.vowels <- letters[c(1, 5, 9, 15, 21)]
.consonants <- letters[!(letters %in% .vowels)]
.CONSONANTS <- toupper(.consonants)

.Human_Name <- function(){
  Name <- paste(sample(x = .CONSONANTS, size = 1), sample(x = .vowels, size = 1), sep = "")
  NameDone = F
  while(!NameDone){
    Name <- paste(Name, sample(x = .consonants, size = 1), sample(x = .vowels, size = 1), sep = "")
    NameDone = sample(x = c(T,F), size = 1)
  }
  return(Name)
}
Create_Name[["Human"]] <- .Human_Name

#' Writes a txt file suitable for Variant Effect Predictor software
#' 
#' @param this an edit_table object
#' @param file character giving desired output file
#' @return none
#' @export
write_vep <- function(this, file="edits.vep") {
  
  # VEP expects two positions. A range indicates an indel. Identical
  #   positions indicate a SNP
  vep <- data.frame(this$AllSites[, "Chr"],
                    this$AllSites[, "Pos"],
                    this$AllSites[, "Pos"],
                    this$AllSites[, "Mismatch"],
                    this$AllSites[, "Strand"],
                    this$AllSites[, "Tissue"])
  
  write.table(vep,
              file = file,
              quote = FALSE,
              sep = '\t',
              col.names = FALSE,
              row.names = FALSE)
}
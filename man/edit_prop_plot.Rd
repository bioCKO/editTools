% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/edit_prop_plot.R
\name{edit_prop_plot}
\alias{edit_prop_plot}
\title{Plots distributions of mismatch fractions}
\usage{
edit_prop_plot(this, field = "AllSites", use.nonAtoG = TRUE,
  text_size = 20, line_size = 2)
}
\arguments{
\item{this}{an edit_table object}

\item{field}{character specifiying edit_table field. Options are
"AllSites" to consider all mismatches, "Repsites" to consider
only mismatches within repetitive regions, and "mirnaTargetSites"
to consider only mismatches in putative 3'UTR mirna Target sites}

\item{use.nonAtoG}{logical. Do you want to group all non AtoG mismatches together?}

\item{line_size}{numeric specifying size of lines in plot}
}
\value{
a ggplot functional
}
\description{
Mismatch fractions are defined as the proportion of
 reads that map to a locus that support a mismatch out of all
 the reads that map to that locus
}


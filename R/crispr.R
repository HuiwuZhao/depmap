#' crispr
#'
#' The `crispr` dataset is the genetic dependency of CRISPR-Cas9 gene knockout 
#' of select genes in various cancer cell lines. This data originates from the 
#' `gene_effect_corrected` file, which was generated from the (Avana) Public 
#' 19Q1 from batch corrected CERES inferred gene effect matrix. This dataset
#' has been converted from wide fromat to the long form dataset and contains 
#' 17634 Genes, 558 Cell Lines, 26 Primary Diseases, 28 Lineages. The first 
#' column `depmap_ID` is a foreign key relating to the cell lineage, followed by
#' `cell_Line` which contains the common CCLE name of the cancer cell lines, 
#' `gene` which contains both the HUGO gene name of the knockout gene along 
#' with entrez ID#, followed by the column `gene_Name` which only contains HUGO 
#' gene name and `entrez_ID` which contains only the entrez ID#. The last column
#' contains the numerical dependency score values for each pair of genes and 
#' cell lines. 
#'
#' @format A data frame with 9839772 rows (each corresponding to an attribute of
#' a given cell lines) and 6 columns:
#' \describe{
#'     \item{depmap_ID}{cell line foreign key (i.e. "ACH-00001")}
#'     \item{cell_Line}{Name of cancer cell line (i.e. "184A1_BREAST")}
#'     \item{gene}{HUGO symbol (e.g. "SAP25") and Entrez ID# (e.g. 100316904)}
#'     \item{gene_Name}{HUGO symbol (e.g. "SAP25")}
#'     \item{entrez_ID}{Entrez ID# (e.g. 100316904}
#'     \item{dependency}{numerical depenency score of a gene for a cell line}
#' }
#' 
#' @details This data represents the `gene_effect_corrected` dataset taken from
#' the public depmap portal. This dataset features the addition of a foreign key
#' `depmap_ID`` found in the first column of this dataset, which was added from 
#' the `metadata` dataset. The numeric column `depenency` contains dependency
#' scores for a knock out of a known gene for a given cell line. The dataset has
#' been converted to the long format. 
#'
#' @docType data
#'
#' @usage data(crispr)
#'
#' @keywords datasets
#'
#' @references Tsherniak, A., Vazquez, F., Montgomery, P. G., Weir, B. A.,
#' Kryukov, G., Cowley, G. S., ... & Meyers, R. M. (2017). Defining a cancer
#' dependency map. Cell, 170(3), 564-576.
#' (\href{"https://www.ncbi.nlm.nih.gov/pubmed/28753430"}{PubMed})
#'
#' @source \href{"https://ndownloader.figshare.com/files/14221385"}{DepMap, 
#' Broad (2019)}
#'
#' @examples
#' data(crispr)
#' crispr
"crispr"
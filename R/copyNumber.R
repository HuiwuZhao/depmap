#' copyNumber_20Q1
#'
#' The `copyNumber` dataset contains the 20Q1 WES copy number data for genes and
#' cancer cell lines. This dataset includes data from 27639 genes, 1713 cell
#' lines, 35 primary diseases and 36 lineages. The columns of `copyNumber` are:
#' `depmap_id`, a foreign key corresponding to the cancer cell lineage,
#' `cell_line` containing the common CCLE name of the cancer cell lines,
#' `gene` containing both the HUGO gene name of the knockdown gene along with
#' entrez ID#, `gene_name` containing only the HUGO gene name, `entrez_id`
#' containing only the entrez ID#, and `log_copy_number` containing the
#' numerical dependency score values for each pair of genes and cell lines.
#' This dataset can be loaded into the R environment with the
#' `depmap_copyNumber` function.
#'
#' @format A data frame with 47345607 rows (cell lines) and 6 variables.
#'
#' \describe{
#'      \item{depmap_id}{Cancer cell line foreign key (i.e. "ACH-00001")}
#'      \item{gene}{HUGO symbol (e.g. "SAP25") and Entrez ID# (e.g. 100316904)}
#'      \item{gene_name}{HUGO symbol (e.g. "SAP25")}
#'      \item{entrez_id}{Entrez ID# (e.g. 100316904)}
#'      \item{log_copy_number}{numerical log fold change in copy number for a
#'      given gene and cell line}
#'      \item{cell_line}{CCLE name of cancer cell line (i.e. "184A1_BREAST")}
#' }
#'
#' @details This data represents the `CCLE_gene_cn.csv` file taken from the
#' 20Q1 [Broad Institute](https://depmap.org/portal/download/) cancer
#' depenedency study. The derived dataset found in the `depmap` package features
#' the addition of a foreign key `depmap_id` found in the first column of this
#' dataset, which was added from the `metadata` dataset. This dataset has been
#' converted to a long format tibble. Variables names from the original dataset
#' were converted to lower case, put in snake case, and abbreviated where
#' feasible. 
#' 
#' @section Change log:
#' 
#' - 19Q1: Initial dataset consisted of a data frame with 37907473 rows
#' (cell lines) and 6 variables representing 23299 genes, 1604 cell lines, 38
#' primary diseases and 33 lineages.
#' 
#' - 19Q2: adds 23 cell lines and 1 lineage
#' 
#' - 19Q3: adds 3263 genes, 30 cell lines and removes 2 primary diseases. Now a
#' dataframe with 45670234 rows and 6 variables.
#'
#' - 19Q4: adds 77 genes, 25 cell lines, 0 primary diseases and 2 lineages.
#' 
#' - 20Q1: adds 31 cell lines
#'
#' @keywords datasets
#'
#' @examples
#' \dontrun{
#' depmap_copyNumber()
#' }
#'
#' @references Tsherniak, A., Vazquez, F., Montgomery, P. G., Weir, B. A.,
#' Kryukov, G., Cowley, G. S., ... & Meyers, R. M. (2017). Defining a cancer
#' dependency map. Cell, 170(3), 564-576.
#' (\href{"https://www.ncbi.nlm.nih.gov/pubmed/28753430"}{PubMed})
#' 
#' DepMap, Broad (2019): DepMap Achilles 19Q1 Public.
#' (\href{"https://figshare.com/articles/DepMap_Achilles_19Q1_Public/7655150"}{figshare}).
#' Fileset. 
#' 
#' Robin M. Meyers, Jordan G. Bryan, James M. McFarland, Barbara A. Weir, ...
#' David E. Root, William C. Hahn, Aviad Tsherniak. Computational correction of
#' copy number effect improves specificity of CRISPR-Cas9 essentiality screens
#' in cancer cells. Nature Genetics 2017 October 49:1779–1784. 
#' (\href{"https://www.ncbi.nlm.nih.gov/pubmed/29083409"}{Pubmed})
#'  
#' Mahmoud Ghandi, Franklin W. Huang, Judit Jané-Valbuena, Gregory V. Kryukov,
#' ... Todd R. Golub, Levi A. Garraway & William R. Sellers. 2019. Next-
#' generation characterization of the Cancer Cell Line Encyclopedia. Nature 569,
#' 503–508 (2019).
#' (\href{"https://www.nature.com/articles/s41586-019-1186-3"}{Nature})
#'
#' @source \href{"https://depmap.org/portal/download/"}{DepMap, Broad (2019)}
#'
#' @aliases copyNumber_20Q1 copyNumber_19Q4 copyNumber_19Q3 copyNumber_19Q2
#' copyNumber_19Q1 depmap_copyNumber
#'
#' @rdname copyNumber
copyNumber <- NULL
MATCH (gene :Gene),
(gene)-[]-(gene_mrnaexpressionresults :mRNAExpressionResults),
(gene_mrnaexpressionresults)-[]-(gene_mrnaexpressionresults_stagerange :stageRange),
(gene_mrnaexpressionresults)-[]-(gene_mrnaexpressionresults_mrnaexpressionterms :mRNAExpressionTerms),
(gene_mrnaexpressionresults)-[]-(gene_mrnaexpressionresults_expressed :expressed),
(gene_mrnaexpressionresults)-[]-(gene_mrnaexpressionresults_dataset :dataSet)

WHERE gene_mrnaexpressionresults.expressed = 'true' AND gene_mrnaexpressionresults_mrnaexpressionterms.name = '*neuron*' AND gene_mrnaexpressionresults_dataset.name = 'BDGP in situ data set' AND gene_mrnaexpressionresults.stageRange = 'stage 11-12 (BDGP in situ)'
RETURN gene_mrnaexpressionresults_mrnaexpressionterms.name,
gene.secondaryIdentifier,
gene.symbol,
gene_mrnaexpressionresults_dataset.name
ORDER BY gene_mrnaexpressionresults_mrnaexpressionterms.name ASC
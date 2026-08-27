-- Correr en DuckDB (misma sesión/base que ya tenías, con temp_directory ya configurado)

COPY (
  SELECT DISTINCT
    sourceTaxonName,
    interactionTypeName,
    targetTaxonName,
    referenceCitation
  FROM read_csv('C:/Users/santi/Downloads/interactions.tsv.gz', delim='\t', ignore_errors=true)
  WHERE sourceTaxonName IN (
    'Zonotrichia capensis', 'Molothrus bonariensis',
    'Vireo olivaceus', 'Piranga rubra',
    'Apis mellifera', 'Bombus pauloensis',
    'Sambucus nigra', 'Taraxacum officinale'
  )
  AND targetTaxonName IN (
    'Zonotrichia capensis', 'Molothrus bonariensis',
    'Vireo olivaceus', 'Piranga rubra',
    'Apis mellifera', 'Bombus pauloensis',
    'Sambucus nigra', 'Taraxacum officinale'
  )
  AND sourceTaxonName != targetTaxonName
  AND interactionTypeName NOT IN ('interactsWith', 'coOccursWith', 'adjacentTo', 'visits')
) TO 'C:/Users/santi/Downloads/citas_especies_finales.csv' (HEADER, DELIMITER ',');

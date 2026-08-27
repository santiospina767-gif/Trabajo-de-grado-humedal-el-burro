# Trabajo-de-grado-humedal-el-burro

Interfaces inmersivas para la exploración del Humedal El Burro como campo de posibilidades mediante un modelo híbrido de simulación fundamentado en lógicas no clásicas.

Pontificia Universidad Javeriana — Facultad de Arquitectura y Diseño.

## Qué hay en este repositorio

Explicación de cómo fue la selección de las especies y cómo se obtuvieron los datos de estas y sus interacciones, para el modelo de simulación basado en agentes (bacterias, biofilm, aves migratorias y residentes, metales disueltos).

- **`humedal_el_burro.html`** — página de referencia interactiva: cartografía de observaciones, red de interacciones entre 136 especies, tabla completa de especies, grupo final seleccionado con citas, y la metodología completa del proceso. Se abre directo en cualquier navegador, sin instalar nada.
- **`especies_humedal_todas.csv`** — 210 especies del humedal (grado investigación), exportadas de iNaturalist.
- **`nodes.csv` / `edges.csv`** — red de interacciones en formato para importar en Gephi, Kumu u otras herramientas de análisis de redes.
- **`query_citas_finales.sql`** — consulta DuckDB usada para extraer las citas académicas del grupo final de 8 especies desde el volcado completo de GloBI.
- **`interacciones_globi_organizado.xlsx`** / **`citas_finales_organizadas.xlsx`** — tablas de trabajo con las interacciones documentadas y su calidad de fuente.

## Fuentes de datos

- [iNaturalist](https://www.inaturalist.org) — observaciones de campo georreferenciadas.
- [GloBI — Global Biotic Interactions](https://www.globalbioticinteractions.org) — interacciones bióticas documentadas en literatura científica.
- [DuckDB](https://duckdb.org) — motor usado para filtrar el volcado completo de GloBI sin necesidad de servidor.

Ver la sección "Metodología" dentro de `humedal_el_burro.html` para el proceso paso a paso.

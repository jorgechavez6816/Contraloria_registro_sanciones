#Descargar información de la página de Contraloria
#Archivo de tipo excel xlsx, no se considera primera fila, por no presentar datos de tabla
#Página web: https://www.contraloria.gob.pe/wps/wcm/connect/CGRNew/as_contraloria/Participacion_Ciudadana/Conoce_nuestra_facultad_sancionadora/RegistroSancionados/

import pandas as pd

url = 'http://doc.contraloria.gob.pe/pas/documentos/Registro_sanciones_inscritas_vigentes_Actualizado_31MAY2020.xlsx'
df1 = pd.read_excel(url, skiprows=1)  
df1.to_csv("C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\Registro_sanciones.csv")
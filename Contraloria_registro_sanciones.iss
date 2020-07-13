Sub Main
	IgnoreWarning(True)
	Client.RunPython "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Macros.ILB\Contraloria_registro_sanciones.py"
	Call TextImport()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Registro_sanciones.csv
	Client.RefreshFileExplorer
End Sub

' Archivo - Asistente de importación: Texto delimitado
Function TextImport
	dbName = "Registro_sanciones.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Registro_sanciones.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\Registro_sanciones.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function
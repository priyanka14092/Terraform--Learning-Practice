#myTextFile resource name output --> filename
output "op-myTextFile" {
    value = local_file.myTextFile.filename
}

#myHtmlFile resource name output --> filename
output "op-myHtmlFile" {
  value = local_file.myHtmlFile.filename
}

#myCssFile resource name output --> filename
output "op-myCssFile" {
  value = local_file.myCssFile.filename
}

#myPythonFile resource name output --> filename
output "op-myPythonFile" {
  value = local_file.myPythonFile.filename
}

#localFile resource name output --> filename
output "op-localFile" {
  value = local_file.localFile.content
}

#ranFile resource name output --> filename
output "op-ranFile-name" {
  value = local_file.ranFile.filename
}

#ranFile resource name output --> content
output "op-ranFile-content" {
  value = local_file.ranFile.content
}

#varStrFile resource name output --> filename
output "op-varStrFile" {
  value = local_file.varStrFile.filename
}

#varNumFile resource name output --> filename
output "op-varNumFile" {
  value = local_file.varNumFile.filename
}

#varBoolFile resource name output --> filename
output "op-varBoolFile" {
  value = local_file.varBoolFile.filename
}

#varListFile resource name output --> filename
output "op-varListFile" {
  value = local_file.varListFile.filename
}

#varMapFile resource name output --> filename
output "op-varMapFile" {
  value = local_file.varMapFile.filename
}

#varObjFile resource name output --> filename
output "op-varObjFile" {
  value = local_file.varObjFile.filename
}
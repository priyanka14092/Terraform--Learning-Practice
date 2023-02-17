#RESOURCE TYPE: LOCAL_FILE
#local_file created inside C drive
resource "local_file" "myTextFile" {
  filename = "C:/TextFile/textFile.txt"
  content  = "Hello World! Welcome to my first text file. This is created inside C drive in a folder TextFile."
}

#local_file created inside D drive
resource "local_file" "myHtmlFile" {
  filename = "D:/HtmlFile/htmlFile.html"
  content  = "<html><body><h1>Hello World! Welcome to my first html file. This is created inside D drive in a folder HtmlFile.</h1></body></html>"
}

#local_file created inside F drive
resource "local_file" "myCssFile" {
  filename = "F:/CssFile/cssFile.html"
  content  = "body{text-align:center;background-color:green;}"
}

#local_file created inside H drive
resource "local_file" "myPythonFile" {
  filename = "H:/PythonFile/pythonFile.py"
  content  = "print(\"Hello World! Welcome to my first python file. This is created inside H drive in a folder PythonFile.\")"
}


#LOCAL BLOCK
locals {
  fName    = "${path.module}/files/localTextFile.txt"
  fContent = "Hello World! Welcome to my locals text file. This is created inside folder files."
}

resource "local_file" "localFile" {
  filename = local.fName
  content  = local.fContent
}


#RESOURCE TYPE: RANDOM_ID
resource "random_id" "ranId" {
  byte_length = 8
}

resource "local_file" "ranFile" {
  filename = "${path.module}/files/${random_id.ranId.dec}"
  content  = random_id.ranId.hex
}


#VARIABLES
#String File
resource "local_file" "varStrFile" {
  filename = "${path.module}/files/stringFiles/${var.varStr}"
  content  = "Hello World! Welcome to my variable string file. This is created inside folder stringFiles located in the files folder."
}

#Number File
resource "local_file" "varNumFile" {
  filename = "${path.module}/files/numberFiles/${var.varNum}"
  content  = "Hello World! Welcome to my variable number file. This is created inside folder numberFiles located in the files folder."
}

#Bool File
resource "local_file" "varBoolFile" {
  filename = "${path.module}/files/boolFiles/${var.varBool}"
  content  = "Hello World! Welcome to my variable bool file. This is created inside folder boolFiles located in the files folder."
}

#List File
resource "local_file" "varListFile" {
  filename = "${path.module}/files/listFiles/${var.varList[1]}"
  content  = "Hello World! Welcome to my variable list file. This is created inside folder listFiles located in the files folder."
}

#Map File
resource "local_file" "varMapFile" {
  filename = "${path.module}/files/mapFiles/${var.varMap["2"]}"
  content  = "Hello World! Welcome to my variable map file. This is created inside folder mapFiles located in the files folder."
}

#Object File
resource "local_file" "varObjFile" {
  filename = "${path.module}/files/objectFiles/${var.varObj["fName"]}"
  content  = var.varObj["fContent"]
}
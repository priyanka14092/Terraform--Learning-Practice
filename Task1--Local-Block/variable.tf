#String Variable
variable "varStr" {
  type        = string
  description = "Enter string filename here: "
  default     = "varStrText.txt"
}

#Number Variable
variable "varNum" {
  type        = number
  description = "Enter number filename here: "
  default     = 14092
}

#Bool Variable
variable "varBool" {
  type = bool
  description = "Enter bool (true or false) filename here: "
  default = false
}

#List Variable
variable "varList" {
  type        = list(any)
  description = "Enter any type filename (for list) here: "
  default     = [1, "varLstText.txt", 2, 3, "varLstHtml.html"]
}

#Map Variable
variable "varMap" {
  type        = map(string)
  description = "Enter string filename (for map) here: "
  default = {
    "1" = "varMapText.txt"
    "2" = "varMapHtml.txt"
  }
}

#Object Variable
variable "varObj" {
  type = object({
    fName    = string
    fContent = string
  })
  description = "Enter string filename (for object) here: "
  default = {
    fName    = "varObjHtml.html"
    fContent = "Hello World! Welcome to my variable object file. This is created inside folder objectFiles located in the files folder."
  }
}
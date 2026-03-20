resource "local_file" "second_class" {
    filename = "second_class.txt"
    content = "${var.file-content["statement1"]}\n${var.file-content["statement2"]}"
    depends_on = [ random_pet.second_class ]
}
resource "random_pet" "second_class" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}

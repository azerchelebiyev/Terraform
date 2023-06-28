resource "local_file" "testfile" {
  content  = "This is a test file"
  filename = "/roo/testfile.txt"
}
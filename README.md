# strip-upx-action

## Usage

Example:

```yaml
steps:
- name: compile test file
  run: |
    printf %s 'package main;import "fmt";func main(){fmt.Println("hi")}' > main.go
    go build -o hi main.go
- uses: joshuarli/strip-upx-action@master
  with:
    infile: 'hi'
    strip_args: '-v --strip-all'
    upx_args: '-9'
```

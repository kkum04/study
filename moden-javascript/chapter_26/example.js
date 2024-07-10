const obj = {
  x: 1,
  foo() { return this.x },
  bar: function () { return this.x }
}

//new obj.foo() // error
new obj.bar()

console.log(obj.foo.hasOwnProperty('prototype'))
console.log(obj.bar.hasOwnProperty('prototype'))


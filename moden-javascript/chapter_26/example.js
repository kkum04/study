const obj = {
  x: 1,
  foo() { return this.x },
  bar: function () { return this.x }
}

//new obj.foo() // error
new obj.bar()

console.log(obj.foo.hasOwnProperty('prototype'))
console.log(obj.bar.hasOwnProperty('prototype'))

const create = (id, content) => ({id, content})
const createdValue = create(1, "javascript")
console.dir(createdValue);

const person = {
  name: 'Lee',
  sayHi: () => console.log(`Hi ${this.name}`)
}

person.sayHi();

function foo(param, ...rest) {
  console.log(param)
  console.log(rest)
}

foo(1,2,3,4,5)

function foo2(...rest) {}
console.log(foo2.length) // 0

function bar(x, ...rest) {}
console.log(bar.length); // 1

function baz(x, y, ...rest) {}
console.log(baz.length); // 2

function logName(name = "Lee") {
  console.log(name)
}

logName() // Lee
logName(undefined) // Lee
logName(null) // null
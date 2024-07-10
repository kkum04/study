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
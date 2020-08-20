class Animal {
    name: string;
    legs: number;

    constructor(name: string, legs: number = 4) {
        this.name = name;
        this.legs = legs;
    }

    info(): string {
        return `${this.name}는 다리가  ${this.legs}개다.`
    }

    move(meters: number): string {
        return this.name + "가 " + meters + " 미터를 움직였다.";
    }
}

class Fish extends Animal {
    constructor(name: string, legs: number = 0) {
        super(name, legs);
    }
}

class Dog extends Animal {
    constructor(name: string, legs: number = 4) {
        super(name);
    }

    bark(sound: string) {
        return sound + " " + sound
    }
}

let dog: Dog = new Dog("멍멍이", 4);
console.log(dog.info());
console.log(dog.bark('멍!'));
let fish: Fish = new Fish("니모");
console.log(fish.move(10));
class Counter {
    static count: number = 0;
    static increase() {
        this.count++;
    }
}

Counter.increase();
console.log(Counter.count);

const counter = new Counter();
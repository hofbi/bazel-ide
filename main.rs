use math_utils::{add, is_even, multiply};

fn main() {
    println!("Math Utils Demo");
    println!("===============");

    let a = 10;
    let b = 5;

    println!("a = {}, b = {}", a, b);
    println!("add(a, b) = {}", add(a, b));
    println!("multiply(a, b) = {}", multiply(a, b));

    println!("\nChecking if numbers are even:");
    for i in 1..=5 {
        println!("{} is {}", i, if is_even(i) { "even" } else { "odd" });
    }

    println!("\nDemonstrating more complex operations:");
    let numbers = vec![0, 1, 42, -7, 100];
    for num in numbers {
        let doubled = multiply(num, 2);
        let plus_one = add(num, 1);
        println!(
            "num: {}, doubled: {}, plus_one: {}, is_even: {}",
            num,
            doubled,
            plus_one,
            is_even(num)
        );
    }
}

use math_utils::{add, is_even, multiply};

fn main() {
    println!("Math Utils Demo");
    println!("===============");

    let a = 10;
    let b = 5;

    println!("a = {a}, b = {b}");
    println!("add(a, b) = {}", add(a, b));
    println!("multiply(a, b) = {}", multiply(a, b));

    println!("\nChecking if numbers are even:");
    for i in 1..=5 {
        println!("{i} is {}", if is_even(i) { "even" } else { "odd" });
    }
}

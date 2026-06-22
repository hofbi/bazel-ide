use math_utils::{add, is_even, multiply};

#[test]
fn add_function() {
    assert_eq!(add(2, 3), 5);
    assert_eq!(add(-1, 1), 0);
    assert_eq!(add(0, 0), 0);
    assert_eq!(add(-5, -3), -8);
}

#[test]
fn multiply_function() {
    assert_eq!(multiply(3, 4), 12);
    assert_eq!(multiply(-2, 5), -10);
    assert_eq!(multiply(0, 100), 0);
    assert_eq!(multiply(-3, -4), 12);
}

#[test]
fn is_even_function() {
    assert!(is_even(2));
    assert!(!is_even(3));
    assert!(is_even(0));
    assert!(is_even(-2));
    assert!(!is_even(-3));
    assert!(is_even(100));
    assert!(!is_even(101));
}

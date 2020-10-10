fn is_prime(n: u32) -> bool {
    if n < 2 {
        return false
    }

    let limit = (n as f64).sqrt() as u32;
    println!("checking prime: {} .....", n);

    let mut counter = 0;
    for divisor in 2..=limit {
        if n % divisor == 0 { counter += 1; }
        if counter == 1 {
            return false;
        }
    }
    return true;
}

fn main() {
    println!("{}", is_prime(38));
    println!("{}", is_prime(13));
    println!("{}", is_prime(31));
    println!("{}", is_prime(27));
}

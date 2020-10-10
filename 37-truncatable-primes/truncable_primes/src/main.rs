fn is_prime(n: u32) -> bool {
    if n < 2 {
        return false
    }

    let limit = (n as f64).sqrt() as u32;

    let mut counter = 0;
    for divisor in 2..=limit {
        if n % divisor == 0 { counter += 1; }
        if counter == 1 { return false; }
    }
    return true;
}


fn left_right(n: u32) -> bool {
    let mut s: String = n.to_string();
    while s.chars().count() > 0 {
        let _n: u32 = s.parse().unwrap();

        if !is_prime(_n) {
            return false
        };

        s.replace_range(0..1, "");
    }
    return true;
}


fn right_left(n: u32) -> bool {
    let mut s: String = n.to_string();
    while s.chars().count() > 0 {
        let _n: u32 = s.parse().unwrap();

        if !is_prime(_n) {
            return false
        };

        s.replace_range(s.chars().count()-1..s.chars().count(), "");
    }
    return true;
}


fn main() {
    println!("{}", is_prime(38));
    println!("{}", is_prime(13));
    println!("{}", is_prime(31));
    println!("{}", is_prime(27));
    println!("{}", left_right(3797));
    println!("{}", right_left(3797));

    let mut truncates = 0;
    let mut integer = 9;
    let mut sum = 0;

    while truncates <= 10 {
        if right_left(integer) && left_right(integer) {
            println!("{}", truncates);
            sum = sum + integer;
            truncates = truncates + 1;
        }
        integer = integer + 2;
    }
    println!("{}", sum);
}

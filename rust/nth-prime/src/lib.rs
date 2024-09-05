pub fn gen_primes(limit: u32) -> Vec<u32> {
    let mut primes: Vec<u32> = vec![2];

    for num in 3.. {
        if primes.len() == limit as usize {
            break;
        }

        let square_root = (num as f32).sqrt() as u32 + 1;
        let is_prime = primes
            .iter()
            .take_while(|n| n <= &&square_root)
            .all(|n| num % n != 0);
        if is_prime {
            primes.push(num);
        }
    }
    primes
}

pub fn nth(n: u32) -> u32 {
    if n == 0 {
        return 2;
    }

    gen_primes(n + 1)[n as usize]
}

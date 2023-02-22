#![allow(unused)]

use std::f32::consts::PI;
use std::io;
use rand::Rng;
use std::io::{Write, BufReader, BufRead, ErrorKind};
use std::fs::File;
use std::cmp::Ordering;

use eigenvalues::davidson::Davidson;
use eigenvalues::{DavidsonCorrection, SpectrumTarget};
use nalgebra::{DMatrix, DVector, Dyn, ArrayStorage, VecStorage, Matrix, SMatrix};
//use nalgebra-lapack::{SymmetricEigen};



fn main() {              // Program entry point
    // let mut k = 2;
    // let mut theta = 0;
    // let mut s = 1;
    //let n = 4;
    //let s: f32 = 3.0;
                // [k*np.cos(2*np.pi*m*2/3) for m in range(5)]
    let p = 2.;
    let q = 3.;
    let k = 2.;
    let size = 5;

    let harper_matrix = get_eigen_val(p, q, k, size);


    println!("{}", harper_matrix);

    
}




fn gcd(a: i32,b: i32) -> i32 {
    if (b == 0) {
        return a
    }
    return gcd(a, a%b)
}

fn get_harper_diagonal (p: f32, q: f32, k: f32, size: usize) -> DVector<f32> {
    let mut diagonal: DVector<f32> = DVector::zeros(size);

    for m in 0..size {
        let m32: f32 = m as f32;
        let angle = 2. * PI * m32 * (p/q);
        let angle_cos = angle.cos();
        diagonal[m] = k*angle_cos as f32;
    }

    return diagonal;
}
fn get_harper_matrix (p: f32, q: f32, k: f32, size: usize) -> DMatrix<f32> {

    let harp_diagonal: DVector<f32> = get_harper_diagonal(p, q, k, size);
 
    let harp_diagonal_mat = DMatrix::from_diagonal(&harp_diagonal);

    let jacobi = make_jacobi(size, q);

    let harp_matrix = harp_diagonal_mat + jacobi;

    return harp_matrix;

}

fn get_eigen_val (p: f32, q: f32, k: f32, size: usize) -> DVector<f32> {
    let temp_matrix = get_harper_matrix(p, q, k, size);

    let eigen_vals_solve = temp_matrix.eigenvalues();
    let eigen_vals = eigen_vals_solve.unwrap();

    return eigen_vals;
}

fn make_jacobi (n: usize, s: f32) -> DMatrix<f32> {
    let size = n;
    let mut base_matrix: DMatrix<f32> = DMatrix::zeros(size, size);
    let mut filled_matrix = set_offset_diagonals(n, 1., 1, base_matrix);
    let jacob = set_opposite_edge(n, s, filled_matrix);
    return jacob;
}

fn set_edge (n: usize, s: f32, matrix_in: DMatrix<f32>) -> DMatrix<f32> {
    let size_fin = (n*n)-1;
    let mut matrix = matrix_in;
    matrix[0]=s as f32;
    matrix[size_fin] = s as f32;
    return matrix;
}
fn set_opposite_edge (n: usize, s: f32, matrix_in: DMatrix<f32>) -> DMatrix<f32> {
    let side = n-1;
    let size_fin = (n*n)-1;
    let corner1 = side;
    let corner2 = size_fin-side;
    let mut matrix = matrix_in;
    matrix[corner1]=s as f32;
    matrix[corner2] = s as f32;
    return matrix;
}

fn set_offset_diagonals (n: usize, s: f32, off_set: usize, matrix_in: DMatrix<f32>) -> DMatrix<f32> {
    let mut matrix = matrix_in;

    matrix.fill_lower_triangle(s, off_set);
    matrix.fill_upper_triangle(s, off_set);

    matrix.fill_lower_triangle(0., off_set+1);
    matrix.fill_upper_triangle(0., off_set+1);

    return matrix;
    }













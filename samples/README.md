## Defintions

    ### Corner numbering
        ```rust
        ┌         ┐
        │ 1 0 0 2 │
        │ 0 0 0 0 │
        │ 0 0 0 0 │
        │ 3 0 0 4 │
        └         ┘
        ```

---
---
---

## Functions



`gcd`
    INPUT
        - *a*: `i32`
        - *b*: `i32`
    DOES
        - if `b` is 0 then just returns a, else recursive of `a` and `a%b`
    RETURN
        `i32`

---

`get_harper_diagonal`
    INPUT
        - *p*: `f32`
        - *q*: `f32`
        - *k*: `f32`
        - *size*: `usize`\
    DOES
        - Creates a `DVector<f32>` of size `size`
        - Loops through every row of the vector
            - Coverts for loop counter `m` to `f32`
            - Calculates `angle` [`(2. * PI * m * (p/q))`]
            - Finds cosine of angle
            - Saves cosine in position `m` in vector
    RETURNS
        `DVector<f32>`

---

`get_harper_matrix`
    INPUT
        - *p*: `f32`
        - *q*: `f32`
        - *k*: `f32`
        - *size*: `usize`
    DOES
        - Get's the harper diagonal from `get_harp_diagonal` with input of `(p,q,k,size)`
        - Converts diagonal into a matrix with the diagonal and everything else `0`
        - Gets the jacobi matrix from `make_jacobi` with input `(size, q)`
        - Adds together the harper matrix and jacobi matrix
    RETURNS
        `DMatrix<f32>`

---
`get_eigen_val` 
    INPUT
        - *p*: `f32`
        - *q*: `f32`
        - *k*: `f32`
        - *size*: `usize`
    DOES
        - Get's Harper matrix from `get_harper_matrix` with input of `(p,q,k,size)`
        - Finds the eigenvalues
    RETURNS
        `DVector<f32> `

---

`make_jacobi`
    INPUT
        - *n*: `usize`
            Size of the array
        - *s*: `f32`
            Values for corner 2 and 3
    DOES
        - Sets 1 offset diagonals to `1`
        - Sets corner 2 and 3 to `s`
    RETURNS
        `DMatrix<f32>`

---

`set_edge` 
    INPUT
        - *n*: `usize`
        - *s*: `f32`
        - *matrix_in*: `DMatrix<f32>`
    DOES
        - Takes in a matrix of dimensions `n` by `n`
        - Set's corners 1 and 4 to `s`
    RETURNS
        `DMatrix<f32>`

---

`set_opposite_edge` 
    INPUT
        - *n*: `usize`
        - *s*: `f32`
        - *matrix_in*: `DMatrix<f32>`
    DOES
        - Takes in a matrix of dimensions `n` by `n`
        - Set's corners 2 and 3 to `s`
    RETURNS
        `DMatrix<f32>`

---

`set_offset_diagonals`
    INPUT
        - *n*: `usize`
        - *s*: `f32`
        - *off_set*: `usize`
        - *matrix_in*: `DMatrix<f32>`
    DOES
        - Takes in a matrix of dimensions `n` by `n`
        - Changes all values `off_set` bellow diagonal to `s`
        - Changes all values `off_set` above diagonal to `s`
        - Changes all values `off_set + 1` bellow diagonal to `0`
        - Changes all values `off_set + 1` above diagonal to `0`
    RETURNS
        `DMatrix<f32>`

---
---
---






# OLD TESTING CODE

### Testing edge and opposite edge

```rust
    let n = 4;
    let s: f32 = 3.0;
                // [k*np.cos(2*np.pi*m*2/3) for m in range(5)]
    let p = 2.;
    let q = 3.;
    let k = 2.;
    let size_mat = n;

    let mut matrix_in: DMatrix<f32> = DMatrix::identity(size_mat, size_mat);
    let mut matrix_in_copy: DMatrix<f32> = DMatrix::identity(size_mat, size_mat);

    let test = set_opposite_edge(size_mat, s, matrix_in);
    let test_edge = set_edge(size_mat, s, matrix_in_copy);

    let mut test_matrix: DMatrix<f32> = DMatrix::zeros(3,3);

    for i in 0..9 {
        test_matrix[i] = i as f32;
    }

    let size = n-1;
    let size_fin = (n*n)-1;
    let corner1 = size;
    let corner2 = size_fin-size;


    println!("{}", test_matrix);

    println!("{}", size);
    println!("{}", size_fin);
    println!("{}", corner1);
    println!("{}", corner2);

    println!("{}", test);
    println!("{}", test_edge);
    //let jabob = make_jacobi(n,s);
```
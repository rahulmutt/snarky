let x = 15

let y = x

let z = x

let a = 15

let b = x ; y

let c x = x

let d =
  let e = c in
  ()

let e =
  let e =
    let e = x in
    e
  in
  e

let f =
  let f x = x in
  let g = (c f) f in
  g f f f

let (g : '_a114 -> '_a115) =
  let (f : '_a106 -> '_a106) = fun x -> x in
  f

let (h : (int -> '_a129) -> '_a144) =
 fun (f : int -> '_a129) ->
  let (i : '_a129) = f 15 in
  let (j : '_a129) = f i in
  j

let (i : ('b -> 'b) -> 'b -> 'b) = fun (f : 'b -> 'b) -> f

let (j : '_a180) =
  let (f : '_a160 -> '_a160) = fun (x : '_a160) -> x in
  f f f

let (k : (int -> int) -> int -> int) =
 fun (f : int -> int) (x : int) -> f 15 ; f x

let l = (1, 2, 3)

let m = ((1, 2, 3), 4, 5, (6, (7, 8)))

let n = ((), (), ())

let (o :
         (   int * int * (int * int * (int * int * unit))
          -> int * int * (int * int * (int * int * unit))
          -> int * int * (int * int * (int * int * unit)))
      -> int * int * (int * int * (int * int * unit))) =
 fun (f :
          int * int * (int * int * (int * int * unit))
       -> int * int * (int * int * (int * int * unit))
       -> int * int * (int * int * (int * int * unit))) ->
  let x = (1, 2, (1, 2, (1, 2, ()))) in
  let y = (3, 4, (3, 4, (3, 4, ()))) in
  let z = f x y in
  f x z

type int' = int

let (p : int -> int') = fun (x : int) -> x

type record = {one: int; two: int'; three: int}

let (record : record) = {one= 20; two= 25; three= 30}

let (one : int') = record.one

let (two : (record -> record) -> record) =
 fun (f : record -> record) ->
  {one= {one= 1; two= 2; three= 3}.one; two= (f x).two; three= 3}

let (q : int) =
  let f x = x in
  match f with x -> x 15 | _ -> 12

let (r : record -> int * int) =
 fun ({one= one'; two} : record) ->
  let not_one = match one' with 0 -> 1 | _ -> 0 in
  let two =
    match two with 1 | 2 | 3 | 4 -> 0 | 5 | 6 | 7 | 8 -> 1 | x -> x
  in
  (not_one, two)

let (s : record -> record) =
 fun record ->
  match record with
  | {one= 1; _} -> record
  | {two= 2; three} -> {one= 1; two= 2; three}
  | _ -> {one= 1; two= 2; three= 3}

let (t : ((int -> int -> '_a364) * record) * int -> '_a364) =
 fun x ->
  match x with
  | _, (1 | 2 | 3) -> 1
  | (f, ({one= 1; two} | {three= two})), x -> f two x
  | (f, _), _ -> f 94 84

type variant = A | B | C

type variant2 = A of int | B of unit * int | C of variant2

(*
** Chapter 1 of The Little MLer:
** Building Blocks
** By Wheels
*)

(* 5 is an integer of type int
*)
5;

(* 5.32 is a real
*)
5.32;

(* true is of type bool
*)
true;

(* false is also of type bool
*)
false;

(* Define a new type called seasoning
*)
datatype seasoning =
        Salt
    |   Pepper;

(* Salt is a seasoning
*)
Salt;

(* Pepper is also a seasoning
*)
Pepper;

(* Define a recursive data type called num
*)
datatype num =
        Zero
    |   One_more_than of num;

(* Zero is a num
*)
Zero;

(* One_more_than(Zero) is also a num
*)
One_more_than(Zero);

(* One_more_than(One_more_than(Zero)) is also a num
*)
One_more_than(
    One_more_than(
        Zero));

(* Define a recursive, parametrized data type 'a open_faced_sandwich
*)
datatype 'a open_faced_sandwich =
        Bread of 'a
    |   Slice of 'a open_faced_sandwich;

(* Bread(0) is of type int open_faced_sandwich
*)
Bread(0);

(* Bread(true) is of type bool open_faced_sandwich
*)
Bread(true);

(* Bread(One_more_than(Zero)) is of type num open_faced_sandwich
*)
Bread(
    One_more_than(
        Zero));

(* Bread(Bread(0)) is of type (int open_faced_sandwich) open_faced_sandwich
*)
Bread(
    Bread(0));

(* Bread(Bread(One_more_than(Zero))) is of type
** (num open_faced_sandwich) open_faced_sandwich
*)
Bread(
    Bread(
        One_more_than(Zero)));

(*****************************************************************************
*                                                                            *
* The first moral:                                                           *
*                                                                            *
* Use datatype to describe types. When a type contains lots of values, the   *
* datatype definition refers to itself. Use 'a with datatype to define       *
* shapes.                                                                    *
*                                                                            *
*****************************************************************************)

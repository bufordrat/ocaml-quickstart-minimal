(* example
 * example.ml
 * Matt Teichman <http://home.uchicago.edu/~teichman>
 * 
 * Copyright 2021 Matt Teichman. All rights reserved.
 * Distributed under the GPL2 license, see terms at the end of the file.
 *)

open Prelude

let main () = print "Hello, world!"

(* handle application-specific fatal exception here *)
let myerrs f x = try f x with exn -> raise_notrace exn

let () = if !Sys.interactive then () else syserrors (myerrs main) ()


(*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 *)


//! Autogenerated weights for `ismp_grandpa`
//!
//! THIS FILE WAS AUTO-GENERATED USING THE SUBSTRATE BENCHMARK CLI VERSION 42.0.0
//! DATE: 2024-12-18, STEPS: `50`, REPEAT: `20`, LOW RANGE: `[]`, HIGH RANGE: `[]`
//! WORST CASE MAP SIZE: `1000000`
//! HOSTNAME: `polytope-labs`, CPU: `AMD Ryzen Threadripper PRO 5995WX 64-Cores`
//! WASM-EXECUTION: `Compiled`, CHAIN: `None`, DB CACHE: 1024

// Executed Command:
// target/release/hyperbridge
// benchmark
// pallet
// --wasm-execution=compiled
// --pallet=ismp_grandpa
// --extrinsic=*
// --steps=50
// --repeat=20
// --genesis-builder=runtime
// --runtime=./target/release/wbuild/gargantua-runtime/gargantua_runtime.compact.wasm
// --output=parachain/runtimes/gargantua/src/weights/ismp_grandpa.rs

#![cfg_attr(rustfmt, rustfmt_skip)]
#![allow(unused_parens)]
#![allow(unused_imports)]
#![allow(missing_docs)]

use frame_support::{traits::Get, weights::Weight};
use core::marker::PhantomData;

/// Weight functions for `ismp_grandpa`.
pub struct WeightInfo<T>(PhantomData<T>);
impl<T: frame_system::Config> ismp_grandpa::WeightInfo for WeightInfo<T> {
	/// Storage: `IsmpGrandpa::SupportedStateMachines` (r:0 w:100)
	/// Proof: `IsmpGrandpa::SupportedStateMachines` (`max_values`: None, `max_size`: None, mode: `Measured`)
	/// The range of component `n` is `[1, 100]`.
	fn add_state_machines(n: u32, ) -> Weight {
		// Proof Size summary in bytes:
		//  Measured:  `0`
		//  Estimated: `0`
		// Minimum execution time: 6_913_000 picoseconds.
		Weight::from_parts(7_832_568, 0)
			.saturating_add(Weight::from_parts(0, 0))
			// Standard Error: 7_710
			.saturating_add(Weight::from_parts(1_434_418, 0).saturating_mul(n.into()))
			.saturating_add(T::DbWeight::get().writes((1_u64).saturating_mul(n.into())))
	}
	/// Storage: `IsmpGrandpa::SupportedStateMachines` (r:0 w:100)
	/// Proof: `IsmpGrandpa::SupportedStateMachines` (`max_values`: None, `max_size`: None, mode: `Measured`)
	/// The range of component `n` is `[1, 100]`.
	fn remove_state_machines(n: u32, ) -> Weight {
		// Proof Size summary in bytes:
		//  Measured:  `0`
		//  Estimated: `0`
		// Minimum execution time: 7_204_000 picoseconds.
		Weight::from_parts(5_126_127, 0)
			.saturating_add(Weight::from_parts(0, 0))
			// Standard Error: 8_195
			.saturating_add(Weight::from_parts(1_417_249, 0).saturating_mul(n.into()))
			.saturating_add(T::DbWeight::get().writes((1_u64).saturating_mul(n.into())))
	}
}
{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 0,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [138.0, 215.0, 1221.0, 575.0],
		"gridsize": [15.0, 15.0],
		"boxes": [
			{
				"box": {
					"id": "obj-19",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [691.0, 84.0, 35.0, 20.0],
					"text": "reset"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [611.0, 141.0, 118.0, 33.0],
					"text": "set frequency range and cents threshold"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [611.0, 114.0, 115.0, 20.0],
					"text": "set frequency range"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [735.0, 113.0, 139.0, 22.0],
					"text": "defineSubset 1000 5000"
				}
			},
			{
				"box": {
					"id": "obj-54",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [735.0, 532.0, 53.0, 22.0],
					"text": "zl filter 0"
				}
			},
			{
				"box": {
					"id": "obj-24",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [275.0, 9.0, 51.0, 20.0],
					"text": "audio in"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [1508.0, 584.0, 107.0, 20.0],
					"text": "regamp / randamp"
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [1526.0, 631.0, 70.0, 22.0],
					"text": "loadmess 0"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["int"],
					"parameter_enable": 0,
					"patching_rect": [1526.0, 667.0, 24.0, 24.0],
					"svg": ""
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 134.0, 1372.0, 804.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"autosave": 1,
									"bgmode": 0,
									"border": 0,
									"clickthrough": 0,
									"fontsize": 13.0,
									"id": "obj-34",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 8,
									"offset": [0.0, 0.0],
									"outlettype": ["signal", "signal", "", "list", "int", "", "", ""],
									"patching_rect": [133.0, 134.0, 99.0, 23.0],
									"save": ["#N", "vst~", "loaduniqueid", 0, ";"],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_invisible": 1,
											"parameter_longname": "vst~[5]",
											"parameter_modmode": 0,
											"parameter_osc_name": "<default>",
											"parameter_shortname": "vst~[1]",
											"parameter_type": 3
										}
									},
									"saved_object_attributes": {
										"parameter_enable": 1,
										"parameter_mappable": 0
									},
									"snapshot": {
										"filetype": "C74Snapshot",
										"version": 2,
										"minorversion": 0,
										"name": "snapshotlist",
										"origin": "vst~",
										"type": "list",
										"subtype": "Undefined",
										"embed": 1,
										"snapshot": {},
										"snapshotlist": {
											"current_snapshot": 0,
											"entries": [
												{
													"filetype": "C74Snapshot",
													"version": 2,
													"minorversion": 0,
													"name": "",
													"origin": "",
													"type": "AudioUnit",
													"subtype": "AudioEffect",
													"embed": 1,
													"snapshot": {},
													"fileref": {
														"name": "",
														"filename": ".maxsnap",
														"filepath": "~/Desktop/drum-modal-feedback/data",
														"filepos": -1,
														"snapshotfileid": "edced7fc71d47a65e7c7b7cb6a3ecc6e"
													}
												}
											]
										}
									},
									"text": "vst~",
									"varname": "vst~[1]",
									"viewvisibility": 0
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "obj-22",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [30.0, 88.0, 84.0, 23.0],
									"text": "prepend plug"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-8",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [30.0, 20.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-15",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [133.0, 20.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-18",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["signal"],
									"patching_rect": [239.0, 80.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-19",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [133.0, 217.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-53",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [133.0, 59.0, 33.0, 22.0],
									"text": "== 0"
								}
							},
							{
								"box": {
									"id": "obj-47",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [133.0, 88.0, 94.0, 22.0],
									"text": "prepend disable"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-53", 0],
									"source": ["obj-15", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-34", 0],
									"midpoints": [248.5, 121.5, 142.5, 121.5],
									"source": ["obj-18", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-34", 0],
									"midpoints": [39.5, 122.0, 142.5, 122.0],
									"source": ["obj-22", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-34", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-34", 0],
									"source": ["obj-47", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-47", 0],
									"source": ["obj-53", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-22", 0],
									"source": ["obj-8", 0]
								}
							}
						],
						"originid": "pat-686"
					},
					"patching_rect": [85.0, 704.0, 212.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p vst"
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [633.0, 832.0, 100.0, 20.0],
					"text": "Sinusoidal Level"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [874.0, 832.0, 96.0, 20.0],
					"text": "Resonator Level"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [735.0, 983.0, 58.0, 22.0],
					"text": "mc.sum~"
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [735.0, 799.0, 701.558821439743042, 22.0],
					"text": "mc.combine~ 2"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "gain~",
					"multichannelvariant": 1,
					"multislider": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["multichannelsignal", ""],
					"parameter_enable": 0,
					"patching_rect": [735.0, 832.0, 138.0, 141.0],
					"saved_multichannel": 1
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [1417.0, 768.0, 39.0, 22.0],
					"text": "tanh~"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [1417.0, 736.0, 58.0, 22.0],
					"text": "mc.sum~"
				}
			},
			{
				"box": {
					"id": "obj-55",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [183.0, 215.0, 1147.0, 575.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-43",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "signal", "signal"],
									"patching_rect": [361.5, 232.0, 61.0, 22.0],
									"text": "sp.onset~"
								}
							},
							{
								"box": {
									"id": "obj-42",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "bang"],
									"patching_rect": [361.5, 294.0, 32.0, 22.0],
									"text": "t b b"
								}
							},
							{
								"box": {
									"id": "obj-40",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["bang", "bang"],
									"patching_rect": [282.5, 331.0, 55.0, 22.0],
									"text": "onebang"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [282.5, 232.0, 29.5, 22.0],
									"text": "+ 1"
								}
							},
							{
								"box": {
									"id": "obj-38",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [282.5, 265.0, 98.0, 22.0],
									"text": "gate 2"
								}
							},
							{
								"box": {
									"id": "obj-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [86.5, 16.0, 45.0, 20.0],
									"text": "modes"
								}
							},
							{
								"box": {
									"id": "obj-36",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [28.0, 16.0, 51.0, 20.0],
									"text": "audio in"
								}
							},
							{
								"box": {
									"id": "obj-34",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [264.0, 167.0, 71.0, 20.0],
									"text": "amp control"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-29",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [282.5, 192.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["int", "int"],
									"patching_rect": [574.645857512950897, 331.0, 45.5, 22.0],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patcher": {
										"fileversion": 1,
										"appversion": {
											"major": 9,
											"minor": 0,
											"revision": 2,
											"architecture": "x64",
											"modernui": 1
										},
										"classnamespace": "dsp.gen",
										"rect": [-1886.0, 115.0, 1852.0, 928.0],
										"gridsize": [15.0, 15.0],
										"boxes": [
											{
												"box": {
													"id": "obj-5",
													"maxclass": "newobj",
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [""],
													"patching_rect": [24.0, 7.0, 37.0, 22.0],
													"text": "noise"
												}
											},
											{
												"box": {
													"id": "obj-4",
													"maxclass": "newobj",
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [24.0, 36.0, 35.0, 22.0],
													"text": "out 1"
												}
											}
										],
										"lines": [
											{
												"patchline": {
													"destination": ["obj-4", 0],
													"source": ["obj-5", 0]
												}
											}
										],
										"originid": "pat-706"
									},
									"patching_rect": [361.5, 425.895823419094086, 29.5, 22.0],
									"text": "gen"
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [361.5, 368.0, 232.145857512950897, 22.0],
									"text": "i"
								}
							},
							{
								"box": {
									"id": "obj-53",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [668.645857512950897, 536.104166805744171, 122.0, 33.0],
									"text": "Set non-active reson channels to zero"
								}
							},
							{
								"box": {
									"id": "obj-51",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [433.75, 425.895823419094086, 150.0, 33.0],
									"text": "Generate random amplitudes for resonators"
								}
							},
							{
								"box": {
									"id": "obj-49",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [375.072928756475449, 563.854166805744171, 101.0, 33.0],
									"text": "Normalize amps to sum to 1"
								}
							},
							{
								"box": {
									"id": "obj-45",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [361.5, 461.0, 51.0, 22.0],
									"text": "zl.group"
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [361.5, 399.0, 83.0, 22.0],
									"text": "uzi"
								}
							},
							{
								"box": {
									"id": "obj-31",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [286.5, 569.354166805744171, 74.5, 22.0],
									"text": "/ 1."
								}
							},
							{
								"box": {
									"id": "obj-30",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [231.0, 602.604166805744171, 51.0, 22.0],
									"text": "zl.group"
								}
							},
							{
								"box": {
									"id": "obj-28",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [286.5, 536.104166805744171, 47.0, 22.0],
									"text": "zl.iter 1"
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "", ""],
									"patching_rect": [231.0, 502.854166805744171, 130.0, 22.0],
									"text": "t b l l"
								}
							},
							{
								"box": {
									"id": "obj-24",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [342.0, 536.104166805744171, 43.0, 22.0],
									"text": "zl.sum"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [231.0, 368.0, 38.0, 22.0],
									"text": "zl.reg"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-20",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [49.0, 741.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [231.0, 669.104166805744171, 145.0, 22.0],
									"text": "prepend applyvalues gain"
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [231.0, 635.854166805744171, 389.145857512950897, 22.0],
									"text": "zl.join"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [601.145857512950897, 602.0, 51.0, 22.0],
									"text": "zl.group"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [601.145857512950897, 567.25, 25.0, 22.0],
									"text": "t 0."
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [601.145857512950897, 535.0, 59.5, 22.0],
									"text": "uzi"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [601.145857512950897, 502.854166805744171, 33.0, 22.0],
									"text": "!- 64"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [574.645857512950897, 294.0, 37.0, 22.0],
									"text": "zl.len"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [231.0, 120.0, 362.645857512950897, 22.0],
									"text": "t l l"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [231.0, 331.0, 39.0, 22.0],
									"text": "dbtoa"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 4,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [49.0, 708.0, 196.0, 22.0],
									"text": "mc.reson~ 0. 440. 100. @chans 64"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-2",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["signal"],
									"patching_rect": [49.0, 44.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-33",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [94.0, 669.104166805744171, 132.0, 22.0],
									"text": "prepend applyvalues cf"
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [94.0, 84.0, 156.0, 22.0],
									"text": "zl.delace"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-1",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [94.0, 44.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-12", 0],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-11", 0],
									"source": ["obj-10", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"midpoints": [
										630.895857512950897, 594.854166090488434, 610.645857512950897,
										594.854166090488434
									],
									"source": ["obj-10", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"source": ["obj-11", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-33", 0],
									"source": ["obj-12", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-6", 0],
									"source": ["obj-12", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-14", 1],
									"source": ["obj-13", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-15", 0],
									"source": ["obj-14", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"midpoints": [240.5, 699.052083402872086, 58.5, 699.052083402872086],
									"source": ["obj-15", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-41", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-45", 0],
									"source": ["obj-17", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"order": 1,
									"source": ["obj-2", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-43", 0],
									"midpoints": [58.5, 158.0, 371.0, 158.0],
									"order": 0,
									"source": ["obj-2", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-16", 1],
									"source": ["obj-23", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-23", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-31", 1],
									"source": ["obj-24", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 0],
									"source": ["obj-25", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-28", 0],
									"source": ["obj-25", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-30", 0],
									"source": ["obj-25", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-31", 0],
									"source": ["obj-28", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-29", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-20", 0],
									"midpoints": [58.5, 744.0, 58.5, 744.0],
									"source": ["obj-3", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-14", 0],
									"source": ["obj-30", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-30", 0],
									"midpoints": [296.0, 596.479166805744171, 240.5, 596.479166805744171],
									"source": ["obj-31", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"midpoints": [103.5, 699.461038947105408, 58.5, 699.461038947105408],
									"source": ["obj-33", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-40", 0],
									"source": ["obj-38", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-42", 0],
									"source": ["obj-38", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-38", 0],
									"source": ["obj-39", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"source": ["obj-4", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"midpoints": [292.0, 360.0, 240.5, 360.0],
									"source": ["obj-40", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-17", 0],
									"source": ["obj-41", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-45", 0],
									"midpoints": [403.0, 453.5, 371.0, 453.5],
									"source": ["obj-41", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-16", 0],
									"source": ["obj-42", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-40", 1],
									"midpoints": [384.0, 323.0, 328.0, 323.0],
									"source": ["obj-42", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-38", 1],
									"source": ["obj-43", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-25", 0],
									"midpoints": [371.0, 492.427083402872086, 240.5, 492.427083402872086],
									"source": ["obj-45", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-25", 0],
									"source": ["obj-5", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"source": ["obj-6", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-7", 0],
									"source": ["obj-6", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"source": ["obj-7", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-10", 0],
									"source": ["obj-8", 0]
								}
							}
						],
						"originid": "pat-688"
					},
					"patching_rect": [1417.0, 704.0, 128.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p modes to resonators"
				}
			},
			{
				"box": {
					"id": "obj-52",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [21.0, 584.0, 171.0, 33.0],
					"text": "add an optional delay to the signal chain"
				}
			},
			{
				"box": {
					"id": "obj-50",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["int"],
					"parameter_enable": 0,
					"patching_rect": [181.0, 667.0, 24.0, 24.0],
					"svg": ""
				}
			},
			{
				"box": {
					"id": "obj-46",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [181.0, 629.0, 70.0, 22.0],
					"text": "loadmess 0"
				}
			},
			{
				"box": {
					"id": "obj-45",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": ["clear"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 134.0, 1372.0, 804.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-42",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["listau", "clear"],
									"patching_rect": [30.0, 61.607142857142861, 73.0, 22.0],
									"text": "t listau clear"
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["bang"],
									"patching_rect": [30.0, 30.0, 58.0, 22.0],
									"text": "loadbang"
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [30.0, 157.577922077922096, 112.0, 23.0],
									"text": "prepend append"
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [30.0, 125.396103896103909, 88.0, 23.0],
									"text": "route plug_au"
								}
							},
							{
								"box": {
									"fontsize": 13.0,
									"id": "obj-40",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [30.0, 93.214285714285722, 58.0, 23.0],
									"text": "vstscan"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-44",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [30.0, 189.759740259740283, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-1", 0],
									"source": ["obj-40", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-42", 0],
									"source": ["obj-41", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-40", 0],
									"source": ["obj-42", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 0],
									"source": ["obj-42", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 0],
									"source": ["obj-8", 0]
								}
							}
						],
						"originid": "pat-708"
					},
					"patching_rect": [21.0, 629.0, 103.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p load audio units"
				}
			},
			{
				"box": {
					"fontsize": 13.0,
					"id": "obj-9",
					"items": [
						"AUAudioFilePlayer",
						",",
						"AUBandpass",
						",",
						"AUDelay",
						",",
						"AUDistortion",
						",",
						"AUDynamicsProcessor",
						",",
						"AUFilter",
						",",
						"AUGraphicEQ",
						",",
						"AUHighShelfFilter",
						",",
						"AUHipass",
						",",
						"AULowpass",
						",",
						"AULowShelfFilter",
						",",
						"AUMatrixReverb",
						",",
						"AUMIDISynth",
						",",
						"AUMultibandCompressor",
						",",
						"AUNBandEQ",
						",",
						"AUNetReceive",
						",",
						"AUNetSend",
						",",
						"AUNewPitch",
						",",
						"AUParametricEQ",
						",",
						"AUPeakLimiter",
						",",
						"AUPitch",
						",",
						"AUReverb2",
						",",
						"AURogerBeep",
						",",
						"AURoundTripAAC",
						",",
						"AUSampleDelay",
						",",
						"AUSampler",
						",",
						"AUScheduledSoundPlayer",
						",",
						"AUSoundFieldPanner",
						",",
						"AUSoundIsolation",
						",",
						"AUSpeechSynthesis",
						",",
						"AUSphericalHeadPanner",
						",",
						"AUVectorPanner",
						",",
						"Console Recall",
						",",
						"DLSMusicDevice",
						",",
						"dpMeter5",
						",",
						"HRTFPanner",
						",",
						"Micro",
						",",
						"One",
						",",
						"Ozone 11",
						",",
						"Pro-C 2",
						",",
						"Pro-DS",
						",",
						"Pro-G",
						",",
						"Pro-L 2",
						",",
						"Pro-MB",
						",",
						"Pro-Q 3",
						",",
						"Pro-R",
						",",
						"Saturn 2",
						",",
						"Simplon",
						",",
						"StandardCLIP",
						",",
						"SubLab",
						",",
						"Timeless 3",
						",",
						"Twin 2",
						",",
						"UAD 4K Buss Compressor",
						",",
						"UAD 4K Channel Strip",
						",",
						"UAD ADA Flanger",
						",",
						"UAD ADA STD-1 Stereo Tapped Delay",
						",",
						"UAD AKG BX 20",
						",",
						"UAD Ampeg B15N",
						",",
						"UAD Ampeg SVT3Pro",
						",",
						"UAD Ampeg SVTVR Classic",
						",",
						"UAD Ampeg SVTVR",
						",",
						"UAD Ampex ATR-102",
						",",
						"UAD AMS DMX 15-80 S",
						",",
						"UAD AMS Neve DFC Channel Strip",
						",",
						"UAD AMS RMX16 Expanded",
						",",
						"UAD AMS RMX16",
						",",
						"UAD Antares Auto-Tune Realtime",
						",",
						"UAD API 2500",
						",",
						"UAD API 550A",
						",",
						"UAD API 560",
						",",
						"UAD API Preamp",
						",",
						"UAD API Vision Channel Strip Legacy",
						",",
						"UAD API Vision Channel Strip",
						",",
						"UAD Auto-Tune Realtime Access",
						",",
						"UAD Auto-Tune Realtime Advanced",
						",",
						"UAD Auto-Tune Realtime X",
						",",
						"UAD Avalon VT-737sp",
						",",
						"UAD Bermuda Triangle",
						",",
						"UAD Brigade Chorus",
						",",
						"UAD bx_digital V2 Mono",
						",",
						"UAD bx_digital V2",
						",",
						"UAD bx_digital V3 mix",
						",",
						"UAD bx_digital V3",
						",",
						"UAD bx_masterdesk Classic",
						",",
						"UAD bx_masterdesk",
						",",
						"UAD bx_refinement",
						",",
						"UAD bx_saturator V2",
						",",
						"UAD bx_subsynth",
						",",
						"UAD bx_tuner",
						",",
						"UAD C-Suite C-Axe",
						",",
						"UAD C-Suite C-Max",
						",",
						"UAD C-Suite C-Vox",
						",",
						"UAD Cambridge",
						",",
						"UAD Capitol Chambers",
						",",
						"UAD Century Tube Channel Strip",
						",",
						"UAD Chandler GAV19T",
						",",
						"UAD Chandler Limited Curve Bender",
						",",
						"UAD Chandler Limited Zener Limiter",
						",",
						"UAD Cooper Time Cube",
						",",
						"UAD CS-1",
						",",
						"UAD Dangerous BAX EQ Master",
						",",
						"UAD Dangerous BAX EQ Mix",
						",",
						"UAD dbx 160",
						",",
						"UAD Diezel Herbert",
						",",
						"UAD Diezel VH4",
						",",
						"UAD DreamVerb",
						",",
						"UAD Dytronics Cyclosonic Panner",
						",",
						"UAD Dytronics Tri-Stereo Chorus",
						",",
						"UAD Eden WT800",
						",",
						"UAD elysia alpha master",
						",",
						"UAD elysia alpha mix",
						",",
						"UAD elysia mpressor",
						",",
						"UAD Empirical Labs Distressor",
						",",
						"UAD Empirical Labs FATSO Jr",
						",",
						"UAD Empirical Labs FATSO Sr",
						",",
						"UAD EMT 140",
						",",
						"UAD EMT 250",
						",",
						"UAD ENGL E646 VS",
						",",
						"UAD ENGL E765 RT",
						",",
						"UAD ENGL Savage 120",
						",",
						"UAD EP-34 Tape Echo",
						",",
						"UAD Eventide H910 Harmonizer",
						",",
						"UAD Fairchild 660",
						",",
						"UAD Fairchild 670 Legacy",
						",",
						"UAD Fairchild 670",
						",",
						"UAD Fender 55 Tweed Deluxe",
						",",
						"UAD Friedman BE100",
						",",
						"UAD Friedman Buxom Betty",
						",",
						"UAD Friedman DS40",
						",",
						"UAD Fuchs Overdrive Supreme 50",
						",",
						"UAD Fuchs Train II",
						",",
						"UAD Galaxy Tape Echo",
						",",
						"UAD Gallien Krueger 800RB",
						",",
						"UAD Harrison 32C SE",
						",",
						"UAD Harrison 32C",
						",",
						"UAD Helios Type 69 Legacy",
						",",
						"UAD Helios Type 69",
						",",
						"UAD Hemisphere Mic Collection",
						",",
						"UAD Hitsville EQ Mastering",
						",",
						"UAD Hitsville EQ",
						",",
						"UAD Hitsville Reverb Chambers",
						",",
						"UAD Ibanez Tube Screamer TS808",
						",",
						"UAD Korg SDD-3000",
						",",
						"UAD LA-6176 Channel Strip",
						",",
						"UAD Lexicon 224",
						",",
						"UAD Lexicon 480L",
						",",
						"UAD Little Labs IBP",
						",",
						"UAD Little Labs VOG",
						",",
						"UAD Maag EQ4",
						",",
						"UAD Manley Massive Passive MST",
						",",
						"UAD Manley Massive Passive",
						",",
						"UAD Manley Reference Mic Preamp",
						",",
						"UAD Manley Variable Mu",
						",",
						"UAD Manley VOXBOX",
						",",
						"UAD Marshall Bluesbreaker 1962",
						",",
						"UAD Marshall JMP 2203",
						",",
						"UAD Marshall Plexi Classic",
						",",
						"UAD Marshall Plexi Super Lead 1959",
						",",
						"UAD Marshall Silver Jubilee 2555",
						",",
						"UAD MDWEQ5-3B",
						",",
						"UAD MDWEQ5-5B",
						",",
						"UAD Millennia NSEQ-2",
						",",
						"UAD Moog Multimode Filter SE",
						",",
						"UAD Moog Multimode Filter XL",
						",",
						"UAD Moog Multimode Filter",
						",",
						"UAD MXR Flanger-Doubler",
						",",
						"UAD Neve 1073 Legacy",
						",",
						"UAD Neve 1073",
						",",
						"UAD Neve 1073SE Legacy",
						",",
						"UAD Neve 1081",
						",",
						"UAD Neve 1081SE",
						",",
						"UAD Neve 1084",
						",",
						"UAD Neve 2254 E Dual",
						",",
						"UAD Neve 2254 E",
						",",
						"UAD Neve 31102",
						",",
						"UAD Neve 31102SE",
						",",
						"UAD Neve 33609 C",
						",",
						"UAD Neve 33609SE",
						",",
						"UAD Neve 88RS Legacy",
						",",
						"UAD Neve 88RS",
						",",
						"UAD Neve Preamp",
						",",
						"UAD Ocean Way Mic Collection 180",
						",",
						"UAD Ocean Way Mic Collection",
						",",
						"UAD Ocean Way Studios",
						",",
						"UAD OTO Biscuit 8-bit Effects",
						",",
						"UAD Oxford Dynamic EQ",
						",",
						"UAD Oxford Envolution",
						",",
						"UAD Oxford EQ",
						",",
						"UAD Oxford Inflator",
						",",
						"UAD Oxford Limiter",
						",",
						"UAD Oxford SuprEsser DS",
						",",
						"UAD Oxide Tape",
						",",
						"UAD Precision Buss Compressor",
						",",
						"UAD Precision Channel Strip",
						",",
						"UAD Precision De-Esser",
						",",
						"UAD Precision Delay Mod L",
						",",
						"UAD Precision Delay Mod",
						",",
						"UAD Precision Enhancer Hz",
						",",
						"UAD Precision Enhancer kHz",
						",",
						"UAD Precision Equalizer",
						",",
						"UAD Precision K-Stereo",
						",",
						"UAD Precision Limiter",
						",",
						"UAD Precision Maximizer",
						",",
						"UAD Precision Multiband",
						",",
						"UAD Precision Reflection Engine",
						",",
						"UAD Pultec EQP-1A Legacy",
						",",
						"UAD Pultec EQP-1A",
						",",
						"UAD Pultec HLF-3C",
						",",
						"UAD Pultec MEQ-5",
						",",
						"UAD Pultec-Pro Legacy",
						",",
						"UAD Pure Plate",
						",",
						"UAD Putnam Mic Collection 180",
						",",
						"UAD Putnam Mic Collection",
						",",
						"UAD Raw",
						",",
						"UAD RealVerb-Pro",
						",",
						"UAD Roland CE-1",
						",",
						"UAD Roland Dimension D",
						",",
						"UAD Roland RE-201",
						",",
						"UAD Shadow Hills Mastering Compressor",
						",",
						"UAD Softube Amp Room Half-Stack",
						",",
						"UAD Softube Bass Amp Room 8x10",
						",",
						"UAD Softube Bass Amp Room",
						",",
						"UAD Softube Metal Amp Room",
						",",
						"UAD Softube Vintage Amp Room",
						",",
						"UAD Softube Vocoder",
						",",
						"UAD Sound Machine Wood Works",
						",",
						"UAD Sphere Mic Collection 180",
						",",
						"UAD Sphere Mic Collection",
						",",
						"UAD SPL Transient Designer",
						",",
						"UAD SPL TwinTube",
						",",
						"UAD SPL Vitalizer MK2-T",
						",",
						"UAD SSL E Channel Strip Legacy",
						",",
						"UAD SSL E Channel Strip",
						",",
						"UAD SSL G Bus Compressor Legacy",
						",",
						"UAD SSL G Bus Compressor",
						",",
						"UAD Studer A800",
						",",
						"UAD Studio D Chorus",
						",",
						"UAD Suhr PT100",
						",",
						"UAD Suhr SE100",
						",",
						"UAD Summit Audio TLA-100A",
						",",
						"UAD Teletronix LA-2",
						",",
						"UAD Teletronix LA-2A Gray",
						",",
						"UAD Teletronix LA-2A Legacy",
						",",
						"UAD Teletronix LA-2A Silver",
						",",
						"UAD Teletronix LA-3A",
						",",
						"UAD Thermionic Culture Vulture",
						",",
						"UAD Tonelux Tilt Live",
						",",
						"UAD Tonelux Tilt",
						",",
						"UAD Trident A-Range",
						",",
						"UAD TS Overdrive",
						",",
						"UAD Tube-Tech CL 1B mk II",
						",",
						"UAD Tube-Tech CL 1B",
						",",
						"UAD Tube-Tech ME 1B",
						",",
						"UAD Tube-Tech PE 1C",
						",",
						"UAD UA 1176 Rev A",
						",",
						"UAD UA 1176AE",
						",",
						"UAD UA 1176LN Legacy",
						",",
						"UAD UA 1176LN Rev E",
						",",
						"UAD UA 1176SE Legacy",
						",",
						"UAD UA 175-B",
						",",
						"UAD UA 176",
						",",
						"UAD UA 610-A",
						",",
						"UAD UA 610-B",
						",",
						"UAD V76 Preamp",
						",",
						"UAD Valley People Dyna-mite",
						",",
						"UAD Vertigo VSC-2",
						",",
						"UAD Vertigo VSM-3",
						",",
						"UADx Ampex ATR-102 Master Tape",
						",",
						"UADx API 2500 Bus Compressor",
						",",
						"UADx API Vision Channel Strip",
						",",
						"UADx Brigade Chorus",
						",",
						"UADx Capitol Chambers",
						",",
						"UADx Empirical Labs Distressor",
						",",
						"UADx Galaxy Tape Echo",
						",",
						"UADx Hitsville Reverb Chambers",
						",",
						"UADx LA-2 Compressor",
						",",
						"UADx LA-2A Gray Compressor",
						",",
						"UADx LA-2A Silver Compressor",
						",",
						"UADx Lexicon 224 Digital Reverb",
						",",
						"UADx Neve 1073 Preamp and EQ",
						",",
						"UADx Oxide Tape Recorder",
						",",
						"UADx Pure Plate Reverb",
						",",
						"UADx Ravel Grand Piano",
						",",
						"UADx Sound City Studios",
						",",
						"UADx Studer A800 Tape Recorder",
						",",
						"UADx Studio D Chorus",
						",",
						"UADx Waterfall B3 Organ",
						",",
						"UADx Waterfall Rotary Speaker",
						",",
						"Volcano 3"
					],
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["int", "", ""],
					"parameter_enable": 0,
					"patching_rect": [21.0, 667.0, 147.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 62.0, 1372.0, 804.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-31",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "signal", "signal"],
									"patching_rect": [21.25, 62.0, 61.0, 22.0],
									"text": "sp.onset~"
								}
							},
							{
								"box": {
									"id": "obj-57",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [183.25, 99.168000959726939, 162.25, 22.0],
									"text": "pak deviate 0. 0."
								}
							},
							{
								"box": {
									"data": {
										"patcher": {
											"fileversion": 1,
											"appversion": {
												"major": 9,
												"minor": 0,
												"revision": 2,
												"architecture": "x64",
												"modernui": 1
											},
											"classnamespace": "dsp.gen",
											"rect": [59.0, 106.0, 640.0, 480.0],
											"gridsize": [15.0, 15.0],
											"boxes": [
												{
													"box": {
														"maxclass": "newobj",
														"text": "in 1",
														"patching_rect": [50.0, 14.0, 28.0, 22.0],
														"id": "obj-1",
														"numinlets": 0,
														"numoutlets": 1,
														"outlettype": [""]
													}
												},
												{
													"box": {
														"maxclass": "newobj",
														"text": "pow 2",
														"patching_rect": [50.0, 45.0, 41.0, 22.0],
														"id": "obj-3",
														"numinlets": 1,
														"numoutlets": 1,
														"outlettype": [""]
													}
												},
												{
													"box": {
														"maxclass": "newobj",
														"text": "out 1",
														"patching_rect": [50.0, 75.0, 35.0, 22.0],
														"id": "obj-4",
														"numinlets": 1,
														"numoutlets": 0
													}
												}
											],
											"lines": [
												{
													"patchline": {
														"source": ["obj-1", 0],
														"destination": ["obj-3", 0]
													}
												},
												{
													"patchline": {
														"source": ["obj-3", 0],
														"destination": ["obj-4", 0]
													}
												}
											],
											"originid": "pat-728"
										}
									},
									"id": "obj-53",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [42.0, 196.735283826725635, 55.0, 22.0],
									"text": "mc.gen~",
									"wrapper_uniquekey": "u424029185"
								}
							},
							{
								"box": {
									"id": "obj-50",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [183.25, 131.690428582059837, 114.0, 22.0],
									"text": "mc.sig~ @chans 64"
								}
							},
							{
								"box": {
									"id": "obj-44",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 5,
									"outlettype": ["multichannelsignal", "multichannelsignal", "", "", ""],
									"patching_rect": [42.25, 164.212856204392722, 160.0, 22.0],
									"text": "mc.adsr~ 10 0. 1. @legato 1"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-16",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["signal"],
									"patching_rect": [20.058821439743042, 22.000017571428657, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-19",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [254.875, 22.000017571428657, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-22",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [326.5, 22.000017571428657, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-24",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [42.0, 229.25771144905849, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-31", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 1],
									"source": ["obj-19", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 2],
									"source": ["obj-22", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 0],
									"source": ["obj-31", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 0],
									"midpoints": [30.75, 91.084000479863477, 192.75, 91.084000479863477],
									"source": ["obj-31", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-53", 0],
									"source": ["obj-44", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 4],
									"source": ["obj-50", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 0],
									"source": ["obj-53", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-50", 0],
									"source": ["obj-57", 0]
								}
							}
						],
						"originid": "pat-710"
					},
					"patching_rect": [1021.0, 704.0, 172.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p enevelope generator"
				}
			},
			{
				"box": {
					"id": "obj-83",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [735.0, 736.0, 305.0, 22.0],
					"text": "mc.*~"
				}
			},
			{
				"box": {
					"id": "obj-66",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [1174.0, 619.0, 63.0, 35.0],
					"text": "loadmess 1000."
				}
			},
			{
				"box": {
					"id": "obj-65",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [1097.0, 619.0, 63.0, 35.0],
					"text": "loadmess 500."
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-64",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [1097.0, 669.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-63",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [1174.0, 669.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [1110.0, 585.0, 41.0, 20.0],
					"text": "sigma"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [1192.0, 585.0, 25.0, 20.0],
					"text": "mu"
				}
			},
			{
				"box": {
					"id": "obj-43",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [841.0, 584.0, 111.0, 33.0],
					"text": "Relative Amplitude (with inverse)"
				}
			},
			{
				"box": {
					"id": "obj-39",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [841.0, 631.0, 70.0, 22.0],
					"text": "loadmess 2"
				}
			},
			{
				"box": {
					"floatoutput": 1,
					"id": "obj-36",
					"maxclass": "slider",
					"min": -1.0,
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [841.0, 669.0, 92.0, 23.0],
					"size": 2.0
				}
			},
			{
				"box": {
					"id": "obj-27",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [-1886.0, -118.0, 1852.0, 984.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"comment": "",
									"id": "obj-31",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [342.5, 117.250000000000114, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-29",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [176.0, 195.416666666666856, 38.0, 22.0],
									"text": "zl reg"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "float"],
									"patching_rect": [342.5, 160.333333333333485, 29.5, 22.0],
									"text": "t b f"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [176.0, 224.000000000000227, 196.0, 35.0],
									"text": "vexpr 1 - ((1 - ($f2 < 0) - $f1) * $f2) @scalarmode 1"
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [40.0, 473.0, 446.0, 22.0],
									"text": "mc./~ 1."
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [386.5, 230.500000000000227, 25.0, 22.0],
									"text": "t 0."
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [40.0, 370.833333333333712, 114.0, 22.0],
									"text": "mc.list~ @chans 64"
								}
							},
							{
								"box": {
									"id": "obj-57",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "int"],
									"patching_rect": [176.0, 370.833333333333712, 73.5, 22.0],
									"text": "t l 100"
								}
							},
							{
								"box": {
									"id": "obj-56",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [176.0, 335.750000000000341, 119.0, 22.0],
									"text": "prepend applyvalues"
								}
							},
							{
								"box": {
									"id": "obj-44",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 3,
									"outlettype": ["multichannelsignal", "", ""],
									"patching_rect": [176.0, 405.916666666667084, 128.0, 22.0],
									"text": "mc.curve~ @chans 64"
								}
							},
							{
								"box": {
									"id": "obj-43",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [40.0, 441.000000000000455, 155.0, 22.0],
									"text": "mc.*~"
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [176.0, 300.66666666666697, 229.5, 22.0],
									"text": "zl.join"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [386.5, 265.583333333333599, 51.0, 22.0],
									"text": "zl.group"
								}
							},
							{
								"box": {
									"id": "obj-35",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [386.5, 160.333333333333485, 33.0, 22.0],
									"text": "!- 64"
								}
							},
							{
								"box": {
									"id": "obj-34",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [176.0, 90.166666666666742, 229.5, 22.0],
									"text": "t l l"
								}
							},
							{
								"box": {
									"id": "obj-33",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [386.5, 125.250000000000114, 37.0, 22.0],
									"text": "zl.len"
								}
							},
							{
								"box": {
									"id": "obj-32",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [386.5, 195.416666666666856, 62.0, 22.0],
									"text": "uzi"
								}
							},
							{
								"box": {
									"id": "obj-30",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [176.0, 268.5, 39.0, 22.0],
									"text": "dbtoa"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["multichannelsignal"],
									"patching_rect": [40.0, 405.916666666667084, 62.0, 22.0],
									"text": "mc.cycle~"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [40.0, 58.0, 155.0, 22.0],
									"text": "zl.delace"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-24",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [40.0, 18.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-26",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [40.0, 512.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-11", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"midpoints": [352.0, 188.375000000000171, 185.5, 188.375000000000171],
									"source": ["obj-13", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 1],
									"source": ["obj-13", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 0],
									"source": ["obj-19", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-75", 0],
									"source": ["obj-24", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"source": ["obj-29", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-41", 0],
									"source": ["obj-30", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"source": ["obj-31", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-11", 0],
									"source": ["obj-32", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-32", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 1],
									"midpoints": [396.0, 152.208333333333485, 476.5, 152.208333333333485],
									"order": 0,
									"source": ["obj-33", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-35", 0],
									"order": 1,
									"source": ["obj-33", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"source": ["obj-34", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-33", 0],
									"source": ["obj-34", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-32", 0],
									"source": ["obj-35", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-41", 1],
									"source": ["obj-39", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-56", 0],
									"source": ["obj-41", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-43", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-43", 1],
									"source": ["obj-44", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-30", 0],
									"source": ["obj-5", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 0],
									"source": ["obj-56", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 1],
									"source": ["obj-57", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-44", 0],
									"source": ["obj-57", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-34", 0],
									"source": ["obj-75", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-75", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-43", 0],
									"source": ["obj-8", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-9", 0]
								}
							}
						],
						"originid": "pat-730"
					},
					"patching_rect": [735.0, 704.0, 125.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p modes to oscillators"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [735.0, 768.0, 58.0, 22.0],
					"text": "mc.sum~"
				}
			},
			{
				"box": {
					"id": "obj-17",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [84.0, 1025.0, 45.0, 22.0],
					"text": "dac~ 1"
				}
			},
			{
				"box": {
					"id": "obj-48",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 115.0, 1372.0, 751.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-42",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [81.5, 141.077639751552766, 29.5, 22.0],
									"text": "- 1"
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [66.25, 172.103519668737022, 51.0, 22.0],
									"text": "zl group"
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [51.0, 110.051759834368511, 49.5, 22.0],
									"text": "uzi"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "int"],
									"patching_rect": [51.0, 79.025879917184255, 49.5, 22.0],
									"text": "t b i"
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [66.0, 203.129399585921277, 103.0, 22.0],
									"text": "prepend getMode"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-46",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [51.0, 40.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-47",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [66.0, 234.155279503105533, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-16", 1],
									"source": ["obj-15", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-16", 0],
									"source": ["obj-15", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-16", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-42", 0],
									"source": ["obj-16", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-19", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"midpoints": [91.0, 167.09057971014488, 75.75, 167.09057971014488],
									"source": ["obj-42", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-15", 0],
									"source": ["obj-46", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-47", 0],
									"source": ["obj-9", 0]
								}
							}
						],
						"originid": "pat-732"
					},
					"patching_rect": [916.0, 146.0, 77.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p getMode N"
				}
			},
			{
				"box": {
					"id": "obj-25",
					"maxclass": "number",
					"maximum": 64,
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [916.0, 113.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [735.0, 83.0, 79.0, 22.0],
					"text": "defineSubset"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [735.0, 146.0, 169.0, 22.0],
					"text": "defineSubset 1000 5000 1000"
				}
			},
			{
				"box": {
					"bgmode": 0,
					"border": 0,
					"clickthrough": 0,
					"enablehscroll": 0,
					"enablevscroll": 0,
					"id": "obj-89",
					"lockeddragscroll": 0,
					"lockedsize": 0,
					"maxclass": "bpatcher",
					"name": "analyser.maxpat",
					"numinlets": 2,
					"numoutlets": 2,
					"offset": [0.0, 0.0],
					"outlettype": ["signal", "int"],
					"patching_rect": [345.0, 192.0, 409.0, 330.0],
					"viewvisibility": 1
				}
			},
			{
				"box": {
					"id": "obj-21",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [77.0, 1052.0, 58.0, 20.0],
					"text": "audio out"
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [278.0, 36.0, 45.0, 22.0],
					"text": "adc~ 1"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-2", 0],
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 0],
					"source": ["obj-12", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"source": ["obj-13", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-22", 2],
					"order": 2,
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 0],
					"midpoints": [287.5, 72.169316232204437, 1030.5, 72.169316232204437],
					"order": 1,
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-55", 0],
					"midpoints": [287.5, 71.880951642990112, 1426.5, 71.880951642990112],
					"order": 0,
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-89", 0],
					"midpoints": [287.5, 72.048928359421552, 354.5, 72.048928359421552],
					"order": 3,
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-55", 2],
					"source": ["obj-15", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-17", 0],
					"midpoints": [744.5, 1014.357044204624685, 93.5, 1014.357044204624685],
					"source": ["obj-16", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-15", 0],
					"source": ["obj-18", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-13", 1],
					"source": ["obj-2", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-17", 0],
					"source": ["obj-22", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-13", 0],
					"source": ["obj-23", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-48", 0],
					"source": ["obj-25", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-83", 1],
					"source": ["obj-26", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-83", 0],
					"source": ["obj-27", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-89", 1],
					"source": ["obj-3", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-27", 1],
					"source": ["obj-36", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-36", 0],
					"source": ["obj-39", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-89", 1],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 0],
					"source": ["obj-45", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-50", 0],
					"source": ["obj-46", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-89", 1],
					"midpoints": [925.5, 180.0, 744.5, 180.0],
					"source": ["obj-48", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-89", 1],
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-22", 1],
					"source": ["obj-50", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-27", 0],
					"order": 1,
					"source": ["obj-54", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-55", 1],
					"midpoints": [744.5, 564.000000715255737, 1481.0, 564.000000715255737],
					"order": 0,
					"source": ["obj-54", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-55", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 2],
					"source": ["obj-63", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 1],
					"source": ["obj-64", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-64", 0],
					"source": ["obj-65", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-63", 0],
					"source": ["obj-66", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-23", 0],
					"source": ["obj-83", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-17", 0],
					"midpoints": [354.5, 1014.347891137003899, 93.5, 1014.347891137003899],
					"source": ["obj-89", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-54", 0],
					"source": ["obj-89", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-22", 0],
					"source": ["obj-9", 1]
				}
			}
		],
		"originid": "pat-684",
		"parameters": {
			"obj-22::obj-34": ["vst~[5]", "vst~[1]", 0],
			"parameterbanks": {
				"0": {
					"index": 0,
					"name": "",
					"parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
				}
			},
			"inherited_shortname": 1
		},
		"dependency_cache": [
			{
				"name": ".maxsnap",
				"bootpath": "~/Desktop/drum-modal-feedback/data",
				"patcherrelativepath": "../data",
				"type": "mx@s",
				"implicit": 1
			},
			{
				"name": "analyser.maxpat",
				"bootpath": "~/Desktop/drum-modal-feedback/patchers/bpatchers",
				"patcherrelativepath": "./bpatchers",
				"type": "JSON",
				"implicit": 1
			},
			{
				"name": "fluid.ampfeature~.mxo",
				"type": "iLaX"
			},
			{
				"name": "index.js",
				"bootpath": "~/Desktop/drum-modal-feedback/code/dist",
				"patcherrelativepath": "../code/dist",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "irmeasure~.mxo",
				"type": "iLaX"
			},
			{
				"name": "irvalue~.mxo",
				"type": "iLaX"
			},
			{
				"name": "sp.onset~.maxpat",
				"bootpath": "~/Documents/Max 9/Packages/SP-Tools/patchers",
				"patcherrelativepath": "../../../Documents/Max 9/Packages/SP-Tools/patchers",
				"type": "JSON",
				"implicit": 1
			},
			{
				"name": "spectrumdraw~.mxo",
				"type": "iLaX"
			}
		],
		"autosave": 0
	}
}

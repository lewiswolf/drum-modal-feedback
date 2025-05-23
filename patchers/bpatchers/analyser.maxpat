{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 0,
			"revision": 5,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [184.0, 215.0, 1147.0, 575.0],
		"openinpresentation": 1,
		"gridsize": [15.0, 15.0],
		"boxes": [
			{
				"box": {
					"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [21.0, 155.0, 94.0, 22.0],
					"text": "r #0specdraw"
				}
			},
			{
				"box": {
					"id": "obj-71",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [1080.0, 59.0, 80.0, 20.0],
					"text": "commands in"
				}
			},
			{
				"box": {
					"id": "obj-67",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 5,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [138.0, 215.0, 1221.0, 575.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-55",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [23.0, 175.0, 147.0, 22.0],
									"text": "prepend __analyseSweep"
								}
							},
							{
								"box": {
									"id": "obj-54",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [23.0, 141.0, 29.5, 22.0],
									"text": "f 0."
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [23.0, 66.0, 175.0, 22.0],
									"text": "route __analyseSweep"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-63",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [23.0, 20.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-64",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [76.0, 100.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-66",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [23.0, 216.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-54", 0],
									"source": ["obj-27", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-66", 0],
									"midpoints": [188.5, 206.5, 32.5, 206.5],
									"source": ["obj-27", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-55", 0],
									"source": ["obj-54", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-66", 0],
									"source": ["obj-55", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-27", 0],
									"source": ["obj-63", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-54", 0],
									"midpoints": [85.5, 135.0, 32.5, 135.0],
									"source": ["obj-64", 0]
								}
							}
						],
						"originid": "pat-100"
					},
					"patching_rect": [864.0, 174.0, 104.0, 35.0],
					"text": "p command synchronisation"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [949.0, 111.0, 54.0, 22.0],
					"text": "deferlow"
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [949.0, 83.0, 103.0, 22.0],
					"text": "loadmess set -40."
				}
			},
			{
				"box": {
					"id": "obj-33",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [955.5, 46.0, 90.0, 33.0],
					"presentation": 1,
					"presentation_rect": [209.0, 35.0, 136.0, 20.0],
					"text": "Analysis Threshold (dB)"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-34",
					"maxclass": "flonum",
					"maximum": 0.0,
					"minimum": -100.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [949.0, 142.0, 50.0, 22.0],
					"presentation": 1,
					"presentation_rect": [345.0, 35.0, 59.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [717.0, 147.5, 54.0, 22.0],
					"text": "deferlow"
				}
			},
			{
				"box": {
					"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"id": "obj-18",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [21.0, 83.5, 73.0, 22.0],
					"text": "r #0buffer"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 13.0,
					"id": "obj-10",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["float", "bang"],
					"patching_rect": [21.0, 119.5, 172.0, 23.0],
					"text": "buffer~ #0ESS-IIR 5000 1"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [874.5, 325.0, 45.0, 22.0],
					"text": "state 1"
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [682.0, 457.0, 109.0, 22.0],
					"text": "loadmess hidden 1"
				}
			},
			{
				"box": {
					"comment": "",
					"id": "obj-47",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [1105.0, 83.0, 30.0, 30.0]
				}
			},
			{
				"box": {
					"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"id": "obj-42",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [874.5, 355.0, 61.0, 22.0],
					"text": "s #0gui"
				}
			},
			{
				"box": {
					"id": "obj-41",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 5,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [149.0, 142.0, 978.0, 672.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [205.0, 173.0, 89.0, 22.0],
									"text": "string.tosymbol"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [205.0, 203.0, 81.0, 22.0],
									"text": "prepend write"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [205.0, 141.0, 109.0, 22.0],
									"text": "string.append .wav"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [205.0, 234.0, 79.0, 22.0],
									"text": "s #0buffer"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "int"],
									"patching_rect": [44.0, 104.0, 128.0, 22.0],
									"text": "conformpath max boot"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [44.0, 172.0, 71.0, 22.0],
									"text": "s #0node"
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [44.0, 141.0, 135.0, 22.0],
									"text": "prepend __exportJSON"
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["", "", "bang"],
									"patching_rect": [44.0, 72.0, 66.0, 22.0],
									"text": "savedialog"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-30",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [44.0, 26.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-14", 0],
									"source": ["obj-10", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-11", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-11", 0],
									"source": ["obj-14", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-10", 0],
									"midpoints": [53.5, 133.5, 214.5, 133.5],
									"order": 0,
									"source": ["obj-15", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"order": 1,
									"source": ["obj-15", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"source": ["obj-23", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-15", 0],
									"source": ["obj-25", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-25", 0],
									"source": ["obj-30", 0]
								}
							}
						],
						"originid": "pat-102"
					},
					"patching_rect": [190.0, 424.0, 77.0, 22.0],
					"text": "p export json"
				}
			},
			{
				"box": {
					"id": "obj-37",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": ["signal", ""],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 5,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [149.0, 142.0, 978.0, 672.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "float"],
									"patching_rect": [652.5, 587.0, 29.5, 22.0],
									"text": "t b f"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [518.0, 618.049927000000025, 29.5, 22.0],
									"text": "f 1."
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [1069.0, 489.0, 96.0, 22.0],
									"text": "s #0specdraw"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [110.0, 240.0, 75.0, 22.0],
									"text": "s #0buffer"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [279.0, 175.0, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [279.0, 131.0, 196.0, 22.0],
									"text": "state text, state 0, loadbar hidden 1"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [869.0, 450.0, 35.0, 22.0],
									"text": "set 0"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-4",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [869.0, 481.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["stop", "bang"],
									"patching_rect": [250.0, 100.0, 48.0, 22.0],
									"text": "t stop b"
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", ""],
									"patching_rect": [50.0, 56.0, 44.0, 22.0],
									"text": "sel 1 0"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-29",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [518.0, 910.0, 71.0, 22.0],
									"text": "s #0node"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-27",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [269.0, 489.0, 71.0, 22.0],
									"text": "s #0node"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-19",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [84.5, 175.0, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-18",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [669.0, 489.0, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [159.5, 405.0, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"id": "obj-79",
									"linecount": 2,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [669.0, 443.5, 168.0, 35.0],
									"text": "state text \"Analysing Sweep\", loadbar hidden 1"
								}
							},
							{
								"box": {
									"id": "obj-72",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [159.5, 369.599853999999993, 96.0, 22.0],
									"text": "prepend loadbar"
								}
							},
							{
								"box": {
									"id": "obj-65",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [159.5, 327.0, 81.0, 22.0],
									"text": "snapshot~ 17"
								}
							},
							{
								"box": {
									"id": "obj-63",
									"linecount": 2,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [84.5, 131.0, 158.0, 35.0],
									"text": "state text \"Recording ESS\", state 0, loadbar hidden 0"
								}
							},
							{
								"box": {
									"id": "obj-57",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "bang"],
									"patching_rect": [50.0, 100.0, 53.5, 22.0],
									"text": "t b b"
								}
							},
							{
								"box": {
									"id": "obj-24",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [269.0, 450.0, 54.0, 22.0],
									"text": "deferlow"
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [518.0, 712.0, 212.0, 22.0],
									"text": "expr ($f2 * ($i1 - 1.)) + 20."
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 6,
									"outlettype": ["__analyseSweep", "bang", "bang", "bang", "", ""],
									"patching_rect": [269.0, 412.09985400000005, 1019.0, 22.0],
									"text": "t __analyseSweep b b b l l"
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "float", "float"],
									"patching_rect": [518.0, 510.0, 40.0, 22.0],
									"text": "t b f f"
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": ["int", "float", "int", "int"],
									"patching_rect": [638.5, 556.0, 61.0, 22.0],
									"text": "dspstate~"
								}
							},
							{
								"box": {
									"id": "obj-117",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [518.0, 846.0, 37.0, 22.0],
									"text": "list.rev"
								}
							},
							{
								"box": {
									"id": "obj-116",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["float", "float"],
									"patching_rect": [518.0, 741.0, 72.5, 22.0],
									"text": "t f f"
								}
							},
							{
								"box": {
									"id": "obj-115",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [518.0, 878.0, 139.0, 22.0],
									"text": "prepend __importSweep"
								}
							},
							{
								"box": {
									"id": "obj-114",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [518.0, 814.0, 73.0, 22.0],
									"text": "pack 0. 0."
								}
							},
							{
								"box": {
									"id": "obj-92",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [518.0, 649.09985400000005, 164.0, 22.0],
									"text": "expr ((($f2 / 2) - 20) / $f1) + 1"
								}
							},
							{
								"box": {
									"id": "obj-86",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [469.0, 680.0, 68.0, 22.0],
									"text": "uzi"
								}
							},
							{
								"box": {
									"id": "obj-83",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [518.0, 782.0, 51.0, 22.0],
									"text": "irvalue~"
								}
							},
							{
								"box": {
									"id": "obj-74",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", "bang"],
									"patching_rect": [269.0, 327.0, 32.0, 22.0],
									"text": "t b b"
								}
							},
							{
								"box": {
									"id": "obj-73",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["sweep", "clear"],
									"patching_rect": [50.0, 207.0, 79.0, 22.0],
									"text": "t sweep clear"
								}
							},
							{
								"box": {
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-75",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [269.0, 369.599853999999993, 105.0, 23.0],
									"text": "set #0ESS-IIR"
								}
							},
							{
								"box": {
									"id": "obj-49",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [310.0, 240.0, 105.0, 22.0],
									"text": "getir #0ESS-IIR"
								}
							},
							{
								"box": {
									"id": "obj-50",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["signal", "signal", "bang"],
									"patching_rect": [50.0, 290.0, 238.0, 22.0],
									"text": "irmeasure~"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-30",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 15.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-33",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["signal"],
									"patching_rect": [423.0, 232.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-34",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [518.0, 472.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-35",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [50.0, 327.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-92", 0],
									"source": ["obj-10", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 0],
									"source": ["obj-11", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-6", 0],
									"source": ["obj-11", 4]
								}
							},
							{
								"patchline": {
									"destination": ["obj-7", 0],
									"source": ["obj-11", 3]
								}
							},
							{
								"patchline": {
									"destination": ["obj-79", 0],
									"source": ["obj-11", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-83", 0],
									"midpoints": [1278.5, 773.549927000000025, 527.5, 773.549927000000025],
									"source": ["obj-11", 5]
								}
							},
							{
								"patchline": {
									"destination": ["obj-86", 0],
									"source": ["obj-11", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-117", 0],
									"source": ["obj-114", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"source": ["obj-115", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-114", 1],
									"source": ["obj-116", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-83", 0],
									"source": ["obj-116", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-115", 0],
									"source": ["obj-117", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-10", 0],
									"midpoints": [662.0, 613.024963500000013, 527.5, 613.024963500000013],
									"source": ["obj-12", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-92", 1],
									"source": ["obj-12", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"midpoints": [72.0, 92.5, 259.5, 92.5],
									"source": ["obj-2", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 0],
									"source": ["obj-2", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-10", 1],
									"source": ["obj-22", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 1],
									"midpoints": [548.5, 539.5, 720.5, 539.5],
									"source": ["obj-22", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-25", 0],
									"midpoints": [527.5, 548.5, 648.0, 548.5],
									"source": ["obj-22", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-116", 0],
									"source": ["obj-23", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-27", 0],
									"source": ["obj-24", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-12", 0],
									"source": ["obj-25", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-50", 0],
									"midpoints": [259.5, 275.5, 59.5, 275.5],
									"source": ["obj-3", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-3", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-2", 0],
									"source": ["obj-30", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-50", 0],
									"midpoints": [432.5, 275.5, 59.5, 275.5],
									"source": ["obj-33", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-22", 0],
									"source": ["obj-34", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-50", 0],
									"midpoints": [319.5, 275.5, 59.5, 275.5],
									"source": ["obj-49", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-35", 0],
									"source": ["obj-50", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-65", 0],
									"source": ["obj-50", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-74", 0],
									"source": ["obj-50", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-63", 0],
									"source": ["obj-57", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-73", 0],
									"source": ["obj-57", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-63", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-72", 0],
									"source": ["obj-65", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"source": ["obj-7", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-17", 0],
									"source": ["obj-72", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"source": ["obj-73", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-50", 0],
									"source": ["obj-73", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-49", 0],
									"midpoints": [291.5, 359.0, 305.5, 359.0, 305.5, 229.0, 319.5, 229.0],
									"source": ["obj-74", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-75", 0],
									"source": ["obj-74", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-11", 0],
									"source": ["obj-75", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-18", 0],
									"source": ["obj-79", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-114", 0],
									"source": ["obj-83", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"source": ["obj-86", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-9", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-86", 1],
									"source": ["obj-92", 0]
								}
							}
						],
						"originid": "pat-104"
					},
					"patching_rect": [477.0, 218.0, 259.0, 22.0],
					"text": "p record ESS"
				}
			},
			{
				"box": {
					"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"id": "obj-21",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [864.0, 142.0, 69.0, 22.0],
					"text": "r #0node"
				}
			},
			{
				"box": {
					"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"id": "obj-20",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [362.0, 392.0, 59.0, 22.0],
					"text": "r #0gui"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 5,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [149.0, 142.0, 978.0, 672.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [157.0, 350.0, 96.0, 22.0],
									"text": "s #0specdraw"
								}
							},
							{
								"box": {
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-75",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [157.25, 293.0, 105.0, 23.0],
									"text": "set #0ESS-IIR"
								}
							},
							{
								"box": {
									"id": "obj-18",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 5,
									"outlettype": ["", "", "", "", ""],
									"patching_rect": [396.0, 293.0, 103.0, 49.0],
									"text": "regexp .json @substitute .wav @tosymbol 1"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [396.0, 350.0, 80.0, 22.0],
									"text": "prepend read"
								}
							},
							{
								"box": {
									"id": "obj-12",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [276.5, 293.0, 89.0, 35.0],
									"text": "prepend __importJSON"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "int"],
									"patching_rect": [38.0, 224.0, 128.0, 22.0],
									"text": "conformpath max boot"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [396.0, 387.0, 79.0, 22.0],
									"text": "s #0buffer"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [277.0, 350.0, 71.0, 22.0],
									"text": "s #0node"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [38.0, 466.0, 71.0, 22.0],
									"text": "s #0node"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [136.0, 466.0, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"color": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
									"id": "obj-20",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [64.5, 186.818181818181813, 61.0, 22.0],
									"text": "s #0gui"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["__analyseSweep", "bang"],
									"patching_rect": [38.0, 384.0, 117.0, 22.0],
									"text": "t __analyseSweep b"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"linecount": 2,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [136.0, 418.0, 113.0, 35.0],
									"text": "state text \"Analysing Sweep\""
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [38.0, 350.0, 54.0, 22.0],
									"text": "deferlow"
								}
							},
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 5,
									"outlettype": ["bang", "bang", "", "", "clear"],
									"patching_rect": [38.0, 263.0, 496.0, 22.0],
									"text": "t b b l l clear"
								}
							},
							{
								"box": {
									"id": "obj-19",
									"linecount": 2,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [64.5, 139.363636363636374, 214.0, 35.0],
									"text": "state text \"Importing SPL from JSON\", state 0"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "bang"],
									"patching_rect": [38.0, 104.909090909090907, 45.5, 22.0],
									"text": "t l b"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "bang"],
									"patching_rect": [38.0, 70.454545454545453, 103.0, 22.0],
									"text": "opendialog JSON"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-29",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [38.0, 28.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-12", 0],
									"source": ["obj-1", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-18", 0],
									"source": ["obj-1", 3]
								}
							},
							{
								"patchline": {
									"destination": ["obj-2", 0],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-75", 0],
									"source": ["obj-1", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"midpoints": [524.5, 379.61029052734375, 405.5, 379.61029052734375],
									"source": ["obj-1", 4]
								}
							},
							{
								"patchline": {
									"destination": ["obj-1", 0],
									"source": ["obj-10", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-6", 0],
									"source": ["obj-12", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-13", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-15", 0]
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
									"destination": ["obj-20", 0],
									"source": ["obj-19", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"source": ["obj-2", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"source": ["obj-29", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"source": ["obj-4", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"source": ["obj-5", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"source": ["obj-5", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 0],
									"source": ["obj-75", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-10", 0],
									"source": ["obj-8", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-8", 1]
								}
							}
						],
						"originid": "pat-106"
					},
					"patching_rect": [18.0, 424.0, 77.0, 22.0],
					"text": "p import json"
				}
			},
			{
				"box": {
					"id": "obj-28",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", "int"],
					"parameter_enable": 0,
					"patching_rect": [190.0, 393.0, 100.0, 20.0],
					"presentation": 1,
					"presentation_rect": [209.0, 227.0, 195.0, 27.0],
					"text": "Export JSON"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", "int"],
					"parameter_enable": 0,
					"patching_rect": [18.0, 393.0, 100.0, 20.0],
					"presentation": 1,
					"presentation_rect": [4.0, 227.0, 194.5, 27.0],
					"text": "Import JSON"
				}
			},
			{
				"box": {
					"id": "obj-32",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [874.5, 293.0, 54.0, 22.0],
					"text": "deferlow"
				}
			},
			{
				"box": {
					"id": "obj-94",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 6,
					"outlettype": ["signal", "bang", "int", "float", "", "list"],
					"patching_rect": [864.0, 251.0, 71.5, 22.0],
					"text": "typeroute~"
				}
			},
			{
				"box": {
					"id": "obj-81",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [864.0, 220.0, 271.0, 22.0],
					"saved_object_attributes": {
						"autostart": 1,
						"defer": 0,
						"watch": 0
					},
					"text": "node.script drum-modal-feedback.js @autostart 1",
					"textfile": {
						"filename": "drum-modal-feedback.js",
						"flags": 0,
						"embed": 0,
						"autowatch": 1
					}
				}
			},
			{
				"box": {
					"comment": "",
					"id": "obj-12",
					"index": 0,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [832.0, 293.0, 30.0, 30.0]
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [381.0, 457.0, 86.0, 22.0],
					"text": "loadmess text"
				}
			},
			{
				"box": {
					"id": "obj-46",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"patching_rect": [362.0, 424.0, 616.0, 22.0],
					"text": "route state loadbar"
				}
			},
			{
				"box": {
					"drawoffcolor": 1,
					"elementcolor": [0.2, 0.2, 0.2, 1.0],
					"floatoutput": 1,
					"hidden": 1,
					"id": "obj-40",
					"ignoreclick": 1,
					"knobcolor": [0.345098039215686, 0.815686274509804, 0.4, 1.0],
					"maxclass": "slider",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"parameter_mappable": 0,
					"patching_rect": [661.0, 493.0, 287.0, 27.0],
					"presentation": 1,
					"presentation_rect": [4.0, 297.5, 400.0, 27.0],
					"size": 1.0
				}
			},
			{
				"box": {
					"bgcolor": [0.862745098039216, 0.392156862745098, 0.356862745098039, 1.0],
					"bgoncolor": [0.345098039215686, 0.815686274509804, 0.4, 1.0],
					"id": "obj-26",
					"maxclass": "textbutton",
					"mode": 1,
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", "int"],
					"parameter_enable": 0,
					"parameter_mappable": 0,
					"patching_rect": [362.0, 493.0, 287.0, 27.0],
					"presentation": 1,
					"presentation_rect": [4.0, 262.25, 400.0, 27.0],
					"style": "default",
					"text": "",
					"textcolor": [1.0, 1.0, 1.0, 1.0],
					"texton": "Ready",
					"textoncolor": [1.0, 1.0, 1.0, 1.0],
					"usebgoncolor": 1
				}
			},
			{
				"box": {
					"comment": "",
					"id": "obj-5",
					"index": 0,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [477.0, 256.0, 30.0, 30.0]
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [462.0, 294.40014599999995, 60.0, 20.0],
					"text": "signal out"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [390.5, 57.0, 53.0, 20.0],
					"text": "signal in"
				}
			},
			{
				"box": {
					"comment": "",
					"id": "obj-88",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": ["signal"],
					"patching_rect": [402.0, 78.0, 30.0, 30.0]
				}
			},
			{
				"box": {
					"id": "obj-85",
					"maxclass": "textbutton",
					"mode": 1,
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", "int"],
					"parameter_enable": 0,
					"patching_rect": [477.0, 190.0, 100.0, 20.0],
					"presentation": 1,
					"presentation_rect": [4.0, 3.5, 194.5, 52.0],
					"text": "Perform ESS",
					"textcolor": [1.0, 1.0, 1.0, 1.0],
					"texton": "Cancel",
					"textoncolor": [1.0, 1.0, 1.0, 1.0]
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [717.0, 120.0, 73.0, 22.0],
					"text": "loadmess 5."
				}
			},
			{
				"box": {
					"id": "obj-43",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [694.0, 96.0, 119.0, 20.0],
					"presentation": 1,
					"presentation_rect": [209.0, 7.0, 119.0, 20.0],
					"text": "ESS Resolution (Hz)"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-100",
					"maxclass": "flonum",
					"maximum": 100.0,
					"minimum": 0.001,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [717.0, 189.0, 50.0, 22.0],
					"presentation": 1,
					"presentation_rect": [345.0, 6.0, 59.0, 22.0]
				}
			},
			{
				"box": {
					"fontface": 0,
					"fontname": "Arial",
					"fontsize": 12.0,
					"id": "obj-13",
					"maxclass": "spectrumdraw~",
					"numinlets": 4,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [21.0, 190.0, 400.0, 160.0],
					"presentation": 1,
					"presentation_rect": [4.0, 58.75, 400.0, 160.0]
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-6", 0],
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-37", 2],
					"source": ["obj-100", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 0],
					"midpoints": [390.5, 485.0, 371.5, 485.0],
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-31", 0],
					"source": ["obj-15", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-10", 0],
					"source": ["obj-18", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-40", 0],
					"midpoints": [691.5, 485.5, 670.5, 485.5],
					"source": ["obj-2", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-46", 0],
					"source": ["obj-20", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-67", 0],
					"source": ["obj-21", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-34", 0],
					"source": ["obj-23", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-41", 0],
					"source": ["obj-28", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-23", 0],
					"source": ["obj-30", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-7", 0],
					"source": ["obj-32", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-67", 1],
					"source": ["obj-34", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-5", 0],
					"source": ["obj-37", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-85", 0],
					"midpoints": [726.5, 249.0, 778.0, 249.0, 778.0, 177.0, 486.5, 177.0],
					"source": ["obj-37", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 0],
					"source": ["obj-46", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-40", 0],
					"source": ["obj-46", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-81", 0],
					"midpoints": [1114.5, 214.139404296875, 873.5, 214.139404296875],
					"source": ["obj-47", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-100", 0],
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-81", 0],
					"source": ["obj-67", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-42", 0],
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-94", 0],
					"source": ["obj-81", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-37", 0],
					"source": ["obj-85", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-13", 3],
					"order": 1,
					"source": ["obj-88", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-37", 1],
					"midpoints": [411.5, 164.5, 606.5, 164.5],
					"order": 0,
					"source": ["obj-88", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-13", 0],
					"source": ["obj-9", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"midpoints": [926.0, 282.5, 841.5, 282.5],
					"source": ["obj-94", 5]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"midpoints": [915.5, 282.5, 841.5, 282.5],
					"source": ["obj-94", 4]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"midpoints": [905.0, 282.5, 841.5, 282.5],
					"source": ["obj-94", 3]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"midpoints": [894.5, 282.5, 841.5, 282.5],
					"source": ["obj-94", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"source": ["obj-94", 1]
				}
			}
		],
		"originid": "pat-98",
		"dependency_cache": [
			{
				"name": "drum-modal-feedback.js",
				"bootpath": "~/Desktop/drum-modal-feedback/code/dist",
				"patcherrelativepath": "../../code/dist",
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
				"name": "spectrumdraw~.mxo",
				"type": "iLaX"
			}
		],
		"autosave": 0
	}
}

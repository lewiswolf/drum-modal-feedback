{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 0,
			"revision": 4,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [184.0, 215.0, 1147.0, 575.0],
		"gridsize": [15.0, 15.0],
		"boxes": [
			{
				"box": {
					"id": "obj-21",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [790.0, 75.0, 141.0, 47.0],
					"text": "test getMode\noutput should be: 35 -20 25 -30"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [788.0, 198.0, 150.0, 47.0],
					"text": "test cents threshold\noutput should be: 25 -20 45 -30"
				}
			},
			{
				"box": {
					"id": "obj-19",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [788.0, 352.0, 150.0, 33.0],
					"text": "test frequency range\noutput should be: 25 -30"
				}
			},
			{
				"box": {
					"id": "obj-17",
					"linecount": 10,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [625.0, 150.0, 162.0, 143.0],
					"text": "__importSweep 20. -40, __importSweep 25. -20, __importSweep 30. -40, __importSweep 35. -30, __importSweep 40. -40, __importSweep 45. -30, __importSweep 50. -40, __analyseSweep, defineSubset 0 48000 1000, getMode 0 1"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"linecount": 2,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [354.5, 104.0, 85.0, 35.0],
					"text": "defineSubset, getMode 0 1"
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [101.0, 25.0, 77.0, 20.0],
					"text": "test backend"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"linecount": 8,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [622.0, 310.0, 161.0, 116.0],
					"text": "__importSweep 20. -40, __importSweep 25. -30, __importSweep 30. -40, __importSweep 35. -20, __importSweep 40. -40, __analyseSweep, defineSubset 20 30, getMode 0"
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [616.0, 8.0, 75.0, 20.0],
					"text": "test frontend"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [183.0, 215.0, 1221.0, 575.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 160.0, 135.0, 22.0],
									"text": "prepend __exportJSON"
								}
							},
							{
								"box": {
									"id": "obj-18",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "int"],
									"patching_rect": [50.0, 128.0, 128.0, 22.0],
									"text": "conformpath max boot"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["", "", "bang"],
									"patching_rect": [50.0, 100.0, 66.0, 22.0],
									"text": "savedialog"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-22",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["bang"],
									"patching_rect": [50.0, 40.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-23",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [50.0, 206.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-18", 0],
									"source": ["obj-13", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"source": ["obj-18", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"source": ["obj-21", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"source": ["obj-22", 0]
								}
							}
						],
						"originid": "pat-320"
					},
					"patching_rect": [534.166666666666629, 117.0, 84.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p exportJSON"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["bang"],
					"parameter_enable": 0,
					"patching_rect": [534.166666666666629, 89.0, 24.0, 24.0]
				}
			},
			{
				"box": {
					"id": "obj-24",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [183.0, 215.0, 1221.0, 575.0],
						"gridsize": [15.0, 15.0],
						"boxes": [
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 191.0, 135.0, 22.0],
									"text": "prepend __importJSON"
								}
							},
							{
								"box": {
									"id": "obj-18",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "int"],
									"patching_rect": [50.0, 157.0, 128.0, 22.0],
									"text": "conformpath max boot"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "bang"],
									"patching_rect": [50.0, 127.0, 67.0, 22.0],
									"text": "opendialog"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-22",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["bang"],
									"patching_rect": [50.0, 40.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-23",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [50.0, 237.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-18", 0],
									"source": ["obj-13", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"source": ["obj-18", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"source": ["obj-21", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-13", 0],
									"source": ["obj-22", 0]
								}
							}
						],
						"originid": "pat-322"
					},
					"patching_rect": [443.333333333333314, 117.0, 84.0, 22.0],
					"saved_object_attributes": {
						"globalpatchername": ""
					},
					"text": "p importJSON"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["bang"],
					"parameter_enable": 0,
					"patching_rect": [443.333333333333314, 89.0, 24.0, 24.0]
				}
			},
			{
				"box": {
					"id": "obj-10",
					"linecount": 7,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [625.0, 37.0, 157.0, 102.0],
					"text": "__importSweep 20. -40, __importSweep 25. -30, __importSweep 30. -40, __importSweep 35. -20, __importSweep 40. -40, __analyseSweep, getMode 0 1"
				}
			},
			{
				"box": {
					"id": "obj-9",
					"linecount": 5,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [101.833333333333329, 63.0, 139.0, 76.0],
					"text": "__importSweep 20. -40, __importSweep 25. -30, __importSweep 30. -40, __importSweep 35. -20, __importSweep 40. -40"
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 518.0, 68.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", "int"],
					"patching_rect": [31.0, 486.0, 115.0, 22.0],
					"text": "console"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [31.0, 454.0, 32.0, 22.0],
					"text": "print"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [247.666666666666686, 117.0, 100.0, 22.0],
					"text": "__analyseSweep"
				}
			},
			{
				"box": {
					"bgmode": 0,
					"border": 0,
					"clickthrough": 0,
					"enablehscroll": 0,
					"enablevscroll": 0,
					"id": "obj-7",
					"lockeddragscroll": 0,
					"lockedsize": 0,
					"maxclass": "bpatcher",
					"name": "n4m.monitor.maxpat",
					"numinlets": 1,
					"numoutlets": 1,
					"offset": [0.0, 0.0],
					"outlettype": ["bang"],
					"patching_rect": [340.0, 454.0, 400.0, 220.0],
					"viewvisibility": 1
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [31.0, 117.0, 64.0, 22.0],
					"text": "script start"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [31.0, 420.0, 328.0, 22.0],
					"saved_object_attributes": {
						"autostart": 1,
						"defer": 0,
						"watch": 1
					},
					"text": "node.script drum-modal-feedback.js @autostart 1 @watch 1",
					"textfile": {
						"filename": "drum-modal-feedback.js",
						"flags": 0,
						"embed": 0,
						"autowatch": 1
					}
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-5", 0],
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-7", 0],
					"source": ["obj-1", 1]
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
					"source": ["obj-11", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-12", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-24", 0],
					"source": ["obj-15", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-16", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-17", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 1],
					"source": ["obj-2", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-24", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-3", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-9", 0]
				}
			}
		],
		"originid": "pat-318",
		"dependency_cache": [
			{
				"name": "drum-modal-feedback.js",
				"bootpath": "~/Desktop/drum-modal-feedback/code/dist",
				"patcherrelativepath": "../code/dist",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "fit_jweb_to_bounds.js",
				"bootpath": "C74:/packages/Node for Max/patchers/debug-monitor",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "n4m.monitor.maxpat",
				"bootpath": "C74:/packages/Node for Max/patchers/debug-monitor",
				"type": "JSON",
				"implicit": 1
			},
			{
				"name": "resize_n4m_monitor_patcher.js",
				"bootpath": "C74:/packages/Node for Max/patchers/debug-monitor",
				"type": "TEXT",
				"implicit": 1
			}
		],
		"autosave": 0
	}
}

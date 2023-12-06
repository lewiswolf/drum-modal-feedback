{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1886.0, 115.0, 1483.0, 928.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 56.0, 100.0, 33.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 129.0, 94.0, 22.0 ],
									"text" : "prepend disable"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-54",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 56.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 211.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 187.5, 91.0, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.5, 137.0, 100.0, 33.0 ],
					"text" : "add a delay to the signal chain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 187.5, 58.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.5, 27.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 62.0, 1372.0, 804.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "listau", "clear" ],
									"patching_rect" : [ 30.0, 61.607142857142861, 73.0, 22.0 ],
									"text" : "t listau clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 30.0, 30.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 157.577922077922096, 112.0, 23.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 125.396103896103909, 88.0, 23.0 ],
									"text" : "route plug_au"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 93.214285714285722, 58.0, 23.0 ],
									"text" : "vstscan"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 189.759740259740283, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 8.5, 27.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p load audio units"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 187.5, 137.0, 99.0, 23.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[5]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.5, 91.0, 84.0, 23.0 ],
					"text" : "prepend plug"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-9",
					"items" : [ "AUAudioFilePlayer", ",", "AUBandpass", ",", "AUDelay", ",", "AUDistortion", ",", "AUDynamicsProcessor", ",", "AUFilter", ",", "AUGraphicEQ", ",", "AUHighShelfFilter", ",", "AUHipass", ",", "AULowpass", ",", "AULowShelfFilter", ",", "AUMatrixReverb", ",", "AUMIDISynth", ",", "AUMultibandCompressor", ",", "AUNBandEQ", ",", "AUNetReceive", ",", "AUNetSend", ",", "AUNewPitch", ",", "AUParametricEQ", ",", "AUPeakLimiter", ",", "AUPitch", ",", "AUReverb2", ",", "AURogerBeep", ",", "AURoundTripAAC", ",", "AUSampleDelay", ",", "AUSampler", ",", "AUScheduledSoundPlayer", ",", "AUSoundFieldPanner", ",", "AUSoundIsolation", ",", "AUSpeechSynthesis", ",", "AUSphericalHeadPanner", ",", "AUVectorPanner", ",", "BMS", ",", "bx_subsynth", ",", "Console Recall", ",", "CRTIV Chorus", ",", "CRTIV Reverb 2", ",", "CRTIV Shumovick", ",", "CRTIV Tape Bus", ",", "Crunchessor", ",", "Crystallizer", ",", "CurveEQ", ",", "Decapitator", ",", "Deft Compressor", ",", "Devil-Loc Deluxe", ",", "Devil-Loc", ",", "DLSMusicDevice", ",", "Doubler2 (m)", ",", "Doubler2 (m->s)", ",", "Doubler2 (s)", ",", "Doubler4 (m)", ",", "Doubler4 (m->s)", ",", "Doubler4 (s)", ",", "Drumformer", ",", "Duck", ",", "EBusLim", ",", "EchoBoy Jr", ",", "EchoBoy", ",", "EffectRack", ",", "Elephant", ",", "elysia alpha master", ",", "elysia alpha mix", ",", "elysia karacter master", ",", "elysia karacter mix", ",", "elysia mpressor", ",", "elysia museq master", ",", "elysia museq mix", ",", "elysia nvelope", ",", "elysia phils cascade", ",", "FilterFreak1", ",", "FilterFreak2", ",", "GlissEQ", ",", "HarmoniEQ", ",", "HRTFPanner", ",", "IR-L (m)", ",", "IR-L (m->s)", ",", "IR-L efficient (s)", ",", "IR-L full (s)", ",", "iZotope Insight", ",", "iZotope Meter Tap", ",", "LF Max Punch", ",", "Little AlterBoy", ",", "Little MicroShift", ",", "Little Plate", ",", "Little PrimalTap", ",", "Little Radiator", ",", "MaxxBass (m)", ",", "MaxxBass (s)", ",", "Micro", ",", "MicroShift", ",", "Morphoder (m)", ",", "Morphoder (m->s)", ",", "Morphoder (s)", ",", "MV2 (m)", ",", "MV2 (s)", ",", "NeuralResonator", ",", "neutone", ",", "OldSkoolVerb Plus", ",", "One", ",", "OVC-128", ",", "Ozone 11 Clarity", ",", "Ozone 11 Dynamic EQ", ",", "Ozone 11 Dynamics", ",", "Ozone 11 Equalizer", ",", "Ozone 11 Exciter", ",", "Ozone 11 Imager", ",", "Ozone 11 Impact", ",", "Ozone 11 Low End Focus", ",", "Ozone 11 Master Rebalance", ",", "Ozone 11 Match EQ", ",", "Ozone 11 Maximizer", ",", "Ozone 11 Spectral Shaper", ",", "Ozone 11 Stabilizer", ",", "Ozone 11 Vintage Compressor", ",", "Ozone 11 Vintage EQ", ",", "Ozone 11 Vintage Limiter", ",", "Ozone 11 Vintage Tape", ",", "Ozone 11", ",", "PanMan", ",", "Peakbuster", ",", "PHA-979", ",", "PhaseMistress", ",", "Polysquasher 3", ",", "Powershaper", ",", "PrimalTap", ",", "PrimeEQ", ",", "Pro-C 2", ",", "Pro-DS", ",", "Pro-G", ",", "Pro-L 2", ",", "Pro-MB", ",", "Pro-Q 3", ",", "Pro-R", ",", "PS22 Split (m->s)", ",", "PS22 Split (s)", ",", "PS22 Spread (m->s)", ",", "PS22 Spread (s)", ",", "PS22 Spread(10) (m->s)", ",", "PS22 Spread(10) (s)", ",", "PS22 XSplit (m->s)", ",", "PS22 XSplit (s)", ",", "Radiator", ",", "RBass (m)", ",", "RBass (s)", ",", "RChannel (m)", ",", "RChannel (m->s)", ",", "RChannel (s)", ",", "RCompressor (m)", ",", "RCompressor (s)", ",", "RDeEsser (m)", ",", "RDeEsser (s)", ",", "Renaissance Axx (m)", ",", "Renaissance Axx (s)", ",", "REQ 2 (m)", ",", "REQ 2 (s)", ",", "REQ 4 (m)", ",", "REQ 4 (s)", ",", "REQ 6 (m)", ",", "REQ 6 (s)", ",", "RVerb (m->s)", ",", "RVerb (s)", ",", "RVox (m)", ",", "RVox (s)", ",", "RX 10 Breath Control", ",", "RX 10 Connect", ",", "RX 10 De-click", ",", "RX 10 De-clip", ",", "RX 10 De-crackle", ",", "RX 10 De-ess", ",", "RX 10 De-hum", ",", "RX 10 De-plosive", ",", "RX 10 De-reverb", ",", "RX 10 Guitar De-noise", ",", "RX 10 Monitor", ",", "RX 10 Mouth De-click", ",", "RX 10 Music Rebalance", ",", "RX 10 Repair Assistant", ",", "RX 10 Spectral De-noise", ",", "RX 10 Spectral Editor", ",", "RX 10 Voice De-noise", ",", "S1 Imager (s)", ",", "S1 MS Matrix (s)", ",", "S1 Shuffler (s)", ",", "Saturn 2", ",", "Serum", ",", "Shinechilla", ",", "Sie-Q", ",", "Simplon", ",", "Sobor", ",", "Soniformer", ",", "SPAN Plus", ",", "Spatifier", ",", "SPL Attacker Plus", ",", "SPL De-Esser Dual-Band", ",", "SPL De-Esser", ",", "SPL De-Verb Plus", ",", "SPL DrumXchanger", ",", "SPL EQ Ranger Plus", ",", "SPL HawkEye", ",", "SPL IRON", ",", "SPL Mo-Verb Plus", ",", "SPL Passeq Single", ",", "SPL Passeq", ",", "SPL PQ", ",", "SPL Transient Designer Plus", ",", "SPL TwinTube", ",", "SPL Vitalizer MK2-T", ",", "StandardCLIP", ",", "SubLab", ",", "TEOTE", ",", "THE OVEN", ",", "Timeless 3", ",", "Tonal Balance Control", ",", "TransGainer", ",", "Tremolator", ",", "TrueVerb (m)", ",", "TrueVerb (m->s)", ",", "TrueVerb (s)", ",", "Twin 2", ",", "UAD 4K Buss Compressor", ",", "UAD 4K Channel Strip", ",", "UAD ADA Flanger", ",", "UAD ADA STD-1 Stereo Tapped Delay", ",", "UAD AKG BX 20", ",", "UAD Ampeg B15N", ",", "UAD Ampeg SVT3Pro", ",", "UAD Ampeg SVTVR Classic", ",", "UAD Ampeg SVTVR", ",", "UAD Ampex ATR-102", ",", "UAD AMS DMX 15-80 S", ",", "UAD AMS Neve DFC Channel Strip", ",", "UAD AMS RMX16 Expanded", ",", "UAD AMS RMX16", ",", "UAD Antares Auto-Tune Realtime", ",", "UAD API 2500", ",", "UAD API 550A", ",", "UAD API 560", ",", "UAD API Preamp", ",", "UAD API Vision Channel Strip Legacy", ",", "UAD API Vision Channel Strip", ",", "UAD Auto-Tune Realtime Access", ",", "UAD Auto-Tune Realtime Advanced", ",", "UAD Avalon VT-737sp", ",", "UAD Bermuda Triangle", ",", "UAD Brigade Chorus", ",", "UAD bx_digital V2 Mono", ",", "UAD bx_digital V2", ",", "UAD bx_digital V3 mix", ",", "UAD bx_digital V3", ",", "UAD bx_masterdesk Classic", ",", "UAD bx_masterdesk", ",", "UAD bx_refinement", ",", "UAD bx_saturator V2", ",", "UAD bx_subsynth", ",", "UAD bx_tuner", ",", "UAD C-Suite C-Axe", ",", "UAD C-Suite C-Vox", ",", "UAD Cambridge", ",", "UAD Capitol Chambers", ",", "UAD Century Tube Channel Strip", ",", "UAD Chandler GAV19T", ",", "UAD Chandler Limited Curve Bender", ",", "UAD Chandler Limited Zener Limiter", ",", "UAD Cooper Time Cube", ",", "UAD CS-1", ",", "UAD Dangerous BAX EQ Master", ",", "UAD Dangerous BAX EQ Mix", ",", "UAD dbx 160", ",", "UAD Diezel Herbert", ",", "UAD Diezel VH4", ",", "UAD DreamVerb", ",", "UAD Dytronics Cyclosonic Panner", ",", "UAD Dytronics Tri-Stereo Chorus", ",", "UAD Eden WT800", ",", "UAD elysia alpha master", ",", "UAD elysia alpha mix", ",", "UAD elysia mpressor", ",", "UAD Empirical Labs Distressor", ",", "UAD Empirical Labs FATSO Jr", ",", "UAD Empirical Labs FATSO Sr", ",", "UAD EMT 140", ",", "UAD EMT 250", ",", "UAD ENGL E646 VS", ",", "UAD ENGL E765 RT", ",", "UAD ENGL Savage 120", ",", "UAD EP-34 Tape Echo", ",", "UAD Eventide H910 Harmonizer", ",", "UAD Fairchild 660", ",", "UAD Fairchild 670 Legacy", ",", "UAD Fairchild 670", ",", "UAD Fender 55 Tweed Deluxe", ",", "UAD Friedman BE100", ",", "UAD Friedman Buxom Betty", ",", "UAD Friedman DS40", ",", "UAD Fuchs Overdrive Supreme 50", ",", "UAD Fuchs Train II", ",", "UAD Galaxy Tape Echo", ",", "UAD Gallien Krueger 800RB", ",", "UAD Harrison 32C SE", ",", "UAD Harrison 32C", ",", "UAD Helios Type 69 Legacy", ",", "UAD Helios Type 69", ",", "UAD Hitsville EQ Mastering", ",", "UAD Hitsville EQ", ",", "UAD Hitsville Reverb Chambers", ",", "UAD Ibanez Tube Screamer TS808", ",", "UAD Korg SDD-3000", ",", "UAD Lexicon 224", ",", "UAD Lexicon 480L", ",", "UAD Little Labs IBP", ",", "UAD Little Labs VOG", ",", "UAD Maag EQ4", ",", "UAD Manley Massive Passive MST", ",", "UAD Manley Massive Passive", ",", "UAD Manley Reference Mic Preamp", ",", "UAD Manley Variable Mu", ",", "UAD Manley VOXBOX", ",", "UAD Marshall Bluesbreaker 1962", ",", "UAD Marshall JMP 2203", ",", "UAD Marshall Plexi Classic", ",", "UAD Marshall Plexi Super Lead 1959", ",", "UAD Marshall Silver Jubilee 2555", ",", "UAD MDWEQ5-3B", ",", "UAD MDWEQ5-5B", ",", "UAD Millennia NSEQ-2", ",", "UAD Moog Multimode Filter SE", ",", "UAD Moog Multimode Filter XL", ",", "UAD Moog Multimode Filter", ",", "UAD MXR Flanger-Doubler", ",", "UAD Neve 1073 Legacy", ",", "UAD Neve 1073", ",", "UAD Neve 1073SE Legacy", ",", "UAD Neve 1081", ",", "UAD Neve 1081SE", ",", "UAD Neve 1084", ",", "UAD Neve 2254 E Dual", ",", "UAD Neve 2254 E", ",", "UAD Neve 31102", ",", "UAD Neve 31102SE", ",", "UAD Neve 33609 C", ",", "UAD Neve 33609SE", ",", "UAD Neve 88RS Legacy", ",", "UAD Neve 88RS", ",", "UAD Neve Preamp", ",", "UAD Ocean Way Mic Collection 180", ",", "UAD Ocean Way Mic Collection", ",", "UAD Ocean Way Studios", ",", "UAD OTO Biscuit 8-bit Effects", ",", "UAD Oxford Dynamic EQ", ",", "UAD Oxford Envolution", ",", "UAD Oxford EQ", ",", "UAD Oxford Inflator", ",", "UAD Oxford Limiter", ",", "UAD Oxford SuprEsser DS", ",", "UAD Oxide Tape", ",", "UAD Precision Buss Compressor", ",", "UAD Precision Channel Strip", ",", "UAD Precision De-Esser", ",", "UAD Precision Delay Mod L", ",", "UAD Precision Delay Mod", ",", "UAD Precision Enhancer Hz", ",", "UAD Precision Enhancer kHz", ",", "UAD Precision Equalizer", ",", "UAD Precision K-Stereo", ",", "UAD Precision Limiter", ",", "UAD Precision Maximizer", ",", "UAD Precision Multiband", ",", "UAD Precision Reflection Engine", ",", "UAD Pultec EQP-1A Legacy", ",", "UAD Pultec EQP-1A", ",", "UAD Pultec HLF-3C", ",", "UAD Pultec MEQ-5", ",", "UAD Pultec-Pro Legacy", ",", "UAD Pure Plate", ",", "UAD Putnam Mic Collection 180", ",", "UAD Putnam Mic Collection", ",", "UAD Raw", ",", "UAD RealVerb-Pro", ",", "UAD Roland CE-1", ",", "UAD Roland Dimension D", ",", "UAD Roland RE-201", ",", "UAD Shadow Hills Mastering Compressor", ",", "UAD Softube Amp Room Half-Stack", ",", "UAD Softube Bass Amp Room 8x10", ",", "UAD Softube Bass Amp Room", ",", "UAD Softube Metal Amp Room", ",", "UAD Softube Vintage Amp Room", ",", "UAD Softube Vocoder", ",", "UAD Sound Machine Wood Works", ",", "UAD Sphere Mic Collection 180", ",", "UAD Sphere Mic Collection", ",", "UAD SPL Transient Designer", ",", "UAD SPL TwinTube", ",", "UAD SPL Vitalizer MK2-T", ",", "UAD SSL E Channel Strip Legacy", ",", "UAD SSL E Channel Strip", ",", "UAD SSL G Bus Compressor Legacy", ",", "UAD SSL G Bus Compressor", ",", "UAD Studer A800", ",", "UAD Studio D Chorus", ",", "UAD Suhr PT100", ",", "UAD Suhr SE100", ",", "UAD Summit Audio TLA-100A", ",", "UAD Teletronix LA-2", ",", "UAD Teletronix LA-2A Gray", ",", "UAD Teletronix LA-2A Legacy", ",", "UAD Teletronix LA-2A Silver", ",", "UAD Teletronix LA-3A", ",", "UAD Thermionic Culture Vulture", ",", "UAD Tonelux Tilt Live", ",", "UAD Tonelux Tilt", ",", "UAD Trident A-Range", ",", "UAD TS Overdrive", ",", "UAD Tube-Tech CL 1B mk II", ",", "UAD Tube-Tech CL 1B", ",", "UAD Tube-Tech ME 1B", ",", "UAD Tube-Tech PE 1C", ",", "UAD UA 1176 Rev A", ",", "UAD UA 1176AE", ",", "UAD UA 1176LN Legacy", ",", "UAD UA 1176LN Rev E", ",", "UAD UA 1176SE Legacy", ",", "UAD UA 175-B", ",", "UAD UA 176", ",", "UAD UA 610-A", ",", "UAD UA 610-B", ",", "UAD V76 Preamp", ",", "UAD Valley People Dyna-mite", ",", "UAD Vertigo VSC-2", ",", "UAD Vertigo VSM-3", ",", "UADx 1176 Rev A Compressor", ",", "UADx 1176AE Compressor", ",", "UADx 1176LN Rev E Compressor", ",", "UADx 175-B Compressor", ",", "UADx 176 Compressor", ",", "UADx API 2500 Bus Compressor", ",", "UADx API Vision Channel Strip", ",", "UADx Brigade Chorus", ",", "UADx Century Tube Channel Strip", ",", "UADx dbx 160 Compressor", ",", "UADx Fairchild 660 Compressor", ",", "UADx Fairchild 670 Compressor", ",", "UADx Galaxy Tape Echo", ",", "UADx Hitsville EQ Mastering", ",", "UADx Hitsville EQ", ",", "UADx Hitsville Reverb Chambers", ",", "UADx LA-2 Compressor", ",", "UADx LA-2A Gray Compressor", ",", "UADx LA-2A Silver Compressor", ",", "UADx LA-3A Compressor", ",", "UADx Lexicon 224 Digital Reverb", ",", "UADx Manley Tube Preamp", ",", "UADx Manley VOXBOX Channel Strip", ",", "UADx Moog Minimoog Synth", ",", "UADx Neve 1073 Preamp and EQ", ",", "UADx Opal Morphing Synth", ",", "UADx Oxide Tape Recorder", ",", "UADx PolyMAX Synth", ",", "UADx Pultec EQP-1A EQ", ",", "UADx Pultec HLF-3C EQ", ",", "UADx Pultec MEQ-5 EQ", ",", "UADx Pure Plate Reverb", ",", "UADx Ravel Grand Piano", ",", "UADx Studer A800 Tape Recorder", ",", "UADx Studio D Chorus", ",", "UADx Waterfall B3 Organ", ",", "VariSaturator", ",", "Vertigo VSC-2", ",", "Vertigo VSM-3", ",", "Volcano 3", ",", "Voxformer", ",", "Warmifier", ",", "Waves Tune LT (m)", ",", "Waves Tune LT (s)", ",", "Waves Tune Real-Time (m)", ",", "Waves Tune Real-Time (s)", ",", "Youlean Loudness Meter 2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 8.5, 58.0, 147.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 115.0, 1852.0, 928.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 191.25, 78.168000959726939, 162.25, 22.0 ],
									"text" : "pak deviate 0. 0."
								}

							}
, 							{
								"box" : 								{
									"data" : 									{
										"patcher" : 										{
											"fileversion" : 1,
											"appversion" : 											{
												"major" : 8,
												"minor" : 5,
												"revision" : 6,
												"architecture" : "x64",
												"modernui" : 1
											}
,
											"classnamespace" : "dsp.gen",
											"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
											"bglocked" : 0,
											"openinpresentation" : 0,
											"default_fontsize" : 12.0,
											"default_fontface" : 0,
											"default_fontname" : "Arial",
											"gridonopen" : 1,
											"gridsize" : [ 15.0, 15.0 ],
											"gridsnaponopen" : 1,
											"objectsnaponopen" : 1,
											"statusbarvisible" : 2,
											"toolbarvisible" : 1,
											"lefttoolbarpinned" : 0,
											"toptoolbarpinned" : 0,
											"righttoolbarpinned" : 0,
											"bottomtoolbarpinned" : 0,
											"toolbars_unpinned_last_save" : 0,
											"tallnewobj" : 0,
											"boxanimatetime" : 200,
											"enablehscroll" : 1,
											"enablevscroll" : 1,
											"devicewidth" : 0.0,
											"description" : "",
											"digest" : "",
											"tags" : "",
											"style" : "",
											"subpatcher_template" : "",
											"assistshowspatchername" : 0,
											"boxes" : [ 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "in 1",
														"id" : "obj-1",
														"numinlets" : 0,
														"numoutlets" : 1,
														"outlettype" : [ "" ],
														"patching_rect" : [ 50.0, 14.0, 28.0, 22.0 ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "pow 2",
														"id" : "obj-3",
														"numinlets" : 1,
														"numoutlets" : 1,
														"outlettype" : [ "" ],
														"patching_rect" : [ 50.0, 45.0, 41.0, 22.0 ]
													}

												}
, 												{
													"box" : 													{
														"maxclass" : "newobj",
														"text" : "out 1",
														"id" : "obj-4",
														"numinlets" : 1,
														"numoutlets" : 0,
														"patching_rect" : [ 50.0, 75.0, 35.0, 22.0 ]
													}

												}
 ],
											"lines" : [ 												{
													"patchline" : 													{
														"source" : [ "obj-1", 0 ],
														"destination" : [ "obj-3", 0 ]
													}

												}
, 												{
													"patchline" : 													{
														"source" : [ "obj-3", 0 ],
														"destination" : [ "obj-4", 0 ]
													}

												}
 ]
										}

									}
,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 175.735283826725635, 55.0, 22.0 ],
									"text" : "mc.gen~",
									"wrapper_uniquekey" : "u572001757"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 191.25, 110.690428582059823, 114.0, 22.0 ],
									"text" : "mc.sig~ @chans 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "", "", "" ],
									"patching_rect" : [ 50.25, 143.212856204392722, 160.0, 22.0 ],
									"text" : "mc.adsr~ 10 0. 1. @legato 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 50.25, 40.000017571428657, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 191.25, 40.000017571428657, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.875, 40.000017571428657, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.5, 40.000017571428657, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 208.25771144905849, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 2 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 4 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1086.441178560256958, 616.0, 234.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p enevelope generator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1136.191178560256958, 499.85714285714289, 68.0, 47.0 ],
					"text" : "randomise release times"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 744.441178560256958, 650.0, 361.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1158.1078452269237, 580.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1301.3578452269237, 534.0, 63.0, 35.0 ],
					"text" : "loadmess 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1229.7328452269237, 534.0, 63.0, 35.0 ],
					"text" : "loadmess 500."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-64",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1229.7328452269237, 580.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-63",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1301.3578452269237, 580.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1242.316178560256958, 499.85714285714289, 41.0, 20.0 ],
					"text" : "sigma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1319.441178560256958, 499.85714285714289, 25.0, 20.0 ],
					"text" : "mu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 850.441178560256958, 502.0, 150.0, 33.0 ],
					"text" : "Relative Amplitude (with inverse)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.441178560256958, 547.0, 70.0, 22.0 ],
					"text" : "loadmess 2"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-36",
					"maxclass" : "slider",
					"min" : -1.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 850.441178560256958, 581.0, 92.0, 23.0 ],
					"size" : 2.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "signal", "signal" ],
					"patching_rect" : [ 1065.441178560256958, 547.0, 61.0, 22.0 ],
					"text" : "sp.onset~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ -1886.0, 115.0, 1852.0, 928.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 349.5, 197.250000000000114, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 186.0, 275.416666666666856, 38.0, 22.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 349.5, 240.333333333333485, 29.5, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 186.0, 304.000000000000227, 193.0, 35.0 ],
									"text" : "vexpr 1 - ((1 - ($f2 < 0) - $f1) * $f2) @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 553.0, 446.0, 22.0 ],
									"text" : "mc./~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 396.5, 240.333333333333485, 62.0, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 396.5, 310.500000000000227, 25.0, 22.0 ],
									"text" : "t 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 450.833333333333712, 114.0, 22.0 ],
									"text" : "mc.list~ @chans 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 186.0, 450.833333333333712, 73.5, 22.0 ],
									"text" : "t l 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 186.0, 415.750000000000341, 119.0, 22.0 ],
									"text" : "prepend applyvalues"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "", "" ],
									"patching_rect" : [ 186.0, 485.916666666667084, 128.0, 22.0 ],
									"text" : "mc.curve~ @chans 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 521.000000000000455, 155.0, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 186.0, 380.66666666666697, 229.5, 22.0 ],
									"text" : "zl.join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 396.5, 345.583333333333599, 51.0, 22.0 ],
									"text" : "zl.group"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 396.5, 205.250000000000114, 33.0, 22.0 ],
									"text" : "!- 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 186.0, 135.083333333333371, 229.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 396.5, 170.166666666666742, 37.0, 22.0 ],
									"text" : "zl.len"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 396.5, 275.416666666666856, 62.0, 22.0 ],
									"text" : "uzi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 186.0, 348.5, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 485.916666666667084, 62.0, 22.0 ],
									"text" : "mc.cycle~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 155.0, 22.0 ],
									"text" : "zl.delace"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 592.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 359.0, 268.375000000000171, 195.5, 268.375000000000171 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"midpoints" : [ 406.0, 198.208333333333485, 486.5, 198.208333333333485 ],
									"order" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-57", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-75", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 744.441178560256958, 616.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p modes to oscillators"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 744.441178560256958, 684.0, 58.0, 22.0 ],
					"text" : "mc.sum~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.5, 729.0, 45.0, 22.0 ],
					"text" : "dac~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 115.0, 1372.0, 751.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 81.5, 141.077639751552766, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 66.25, 172.103519668737022, 51.0, 22.0 ],
									"text" : "zl group"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 51.0, 110.051759834368511, 49.5, 22.0 ],
									"text" : "uzi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 51.0, 79.025879917184255, 49.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 203.129399585921277, 103.0, 22.0 ],
									"text" : "prepend getMode"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-46",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 234.155279503105533, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 91.0, 167.09057971014488, 75.75, 167.09057971014488 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 867.816178560256958, 91.0, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p getMode N"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "number",
					"maximum" : 64,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 867.816178560256958, 62.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 655.066178560256958, 62.0, 63.0, 22.0 ],
					"text" : "setCluster"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 744.441178560256958, 91.0, 113.0, 22.0 ],
					"text" : "setRange 500 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 744.507357120513916, 62.0, 60.0, 22.0 ],
					"text" : "setRange"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 655.066178560256958, 91.0, 93.0, 22.0 ],
					"text" : "setCluster 1000"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-89",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "analyser.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 354.441178560256958, 137.0, 409.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.382356882095337, 4.852941274642944, 415.0, 326.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 759.0, 58.0, 20.0 ],
					"text" : "audio out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 409.441178560256958, 92.0, 51.0, 20.0 ],
					"text" : "audio in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 354.441178560256958, 91.0, 45.0, 22.0 ],
					"text" : "adc~ 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 363.941178560256958, 124.0, 329.0, 124.0, 329.0, 489.0, 1074.941178560256958, 489.0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 363.941178560256958, 124.5, 197.0, 124.5 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 2,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 82.0, 125.0, 197.0, 125.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 753.941178560256958, 716.0, 197.0, 716.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 1074.941178560256958, 574.0, 1167.6078452269237, 574.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 3 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 363.941178560256958, 716.5, 197.0, 716.5 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-89", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-34" : [ "vst~[5]", "vst~[1]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "analyser.maxpat",
				"bootpath" : "~/Desktop/drum-modal-feedback/patchers/bpatchers",
				"patcherrelativepath" : "./bpatchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fluid.ampfeature~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "index.js",
				"bootpath" : "~/Desktop/drum-modal-feedback/code/dist",
				"patcherrelativepath" : "../code/dist",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "irmeasure~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "irvalue~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sp.onset~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/SP-Tools/patchers",
				"patcherrelativepath" : "../../../Documents/Max 8/Packages/SP-Tools/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spectrumdraw~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}

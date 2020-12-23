{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 72.0, 135.0, 1497.0, 815.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Century Gothic",
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
		"showontab" : 1,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.256699000000026, 470.5, 96.0, 24.0 ],
					"text" : "s ON-BANG"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 272.385040000000004, 470.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 71.0, 436.5, 34.0, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 90.264708999999996, 461.5, 67.0, 20.0 ],
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1497.0, 789.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1096.859620766081207, 282.366096939326098, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1127.859620766081207, 238.714621067047119, 40.0, 22.0 ],
									"text" : "* 255."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-43",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1127.859620766081207, 205.55265474319458, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1127.859620766081207, 329.65751314163208, 54.0, 22.0 ],
									"text" : "[v 11 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1127.859620766081207, 365.65751314163208, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1158.859620766081207, 282.366096939326098, 59.0, 22.0 ],
									"text" : "r bangOn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 914.359621779360168, 283.528063263178637, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 945.359621779360168, 239.876587390899658, 40.0, 22.0 ],
									"text" : "* 255."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-37",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 945.359621779360168, 206.714621067047119, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 945.359621779360168, 330.819479465484619, 55.0, 22.0 ],
									"text" : "[v 10 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 945.359621779360168, 366.819479465484619, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 974.359621779360168, 283.528063263178637, 59.0, 22.0 ],
									"text" : "r bangOn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 737.859620766081207, 283.528063263178637, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 768.859620766081207, 239.876587390899658, 40.0, 22.0 ],
									"text" : "* 255."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 768.859620766081207, 206.714621067047119, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 768.859620766081207, 330.819479465484619, 48.0, 22.0 ],
									"text" : "[v 9 $1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.25, 250.366096939326098, 48.0, 22.0 ],
									"text" : "[v 7 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 431.25, 286.035584211349487, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 280.25, 298.34458589553833, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.25, 339.65751314163208, 48.0, 22.0 ],
									"text" : "[v 8 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.25, 375.327000413655469, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.84919931053264, 279.308033193827441, 48.0, 22.0 ],
									"text" : "[v 6 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.84919931053264, 314.97752046585083, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.84919931053264, 279.308033193827441, 48.0, 22.0 ],
									"text" : "[v 5 $1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.84919931053264, 314.97752046585083, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 768.859620766081207, 366.819479465484619, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 317.25, 185.530601739883423, 63.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 281.25, 221.24741792678833, 48.0, 22.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 281.25, 252.714621067047119, 50.0, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 171.84919931053264, 213.727019275904468, 48.0, 22.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 171.84919931053264, 183.70496627259331, 29.5, 22.0 ],
									"text" : "> 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 76.84919931053264, 210.55265474319458, 48.0, 22.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 23.0, 148.239185537577441, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 76.84919931053264, 180.530601739883423, 32.0, 22.0 ],
									"text" : "< 80"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.84919931053264, 148.239185537577441, 41.0, 22.0 ],
									"text" : "r Rain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 171.84919931053264, 247.88016939163208, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.84919931053264, 403.0, 150.0, 20.0 ],
									"text" : "Digital outputs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 768.859620766081207, 403.0, 150.0, 33.0 ],
									"text" : "analog outputs to RGBLED strip"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 537.0, 41.0, 190.25, 20.0 ],
									"text" : "These are the outputs to arduino"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.25, 179.638781036616137, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.25, 252.714621067047119, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.25, 221.24741792678833, 59.0, 22.0 ],
									"text" : "r bangOn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 281.25, 185.530601739883423, 29.5, 22.0 ],
									"text" : "< 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 281.25, 148.239185537577441, 49.0, 22.0 ],
									"text" : "r Pollen"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.25, 148.239185537577441, 59.0, 22.0 ],
									"text" : "r bangOn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 431.25, 214.053169693232348, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.84919931053264, 246.34458589553833, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-206",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1127.859620766081207, 171.81947910785675, 54.0, 22.0 ],
									"text" : "r BValue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-207",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 945.359621779360168, 171.81947910785675, 55.0, 22.0 ],
									"text" : "r GValue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-208",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 768.859620766081207, 171.81947910785675, 54.0, 22.0 ],
									"text" : "r RValue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 795.859620766081207, 283.528063263178637, 59.0, 22.0 ],
									"text" : "r bangOn"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-206", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-207", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-208", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"order" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 689.5, 41.000000000000114, 251.0, 32.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p OUTPUTS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 7,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 772.5, 172.5, 57.0, 92.0 ],
					"text" : "[p 5 1], [p 6 1], [p 7 1], [p 8 1], [p 9 2], [p 10 2], [p 11 2]"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-17",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 831.5, 172.5, 240.0, 76.0 ],
					"text" : "Message is formatted as follows\n[\np = command to assign pin\n$1 = pin number\n$2 = pin state (i.e., input, output, PWM) \n]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 72.0, 161.0, 1497.0, 789.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1085.849200443021118, 12.25, 93.0, 26.0 ],
									"text" : "r ON-BANG"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 49.100242763757478, 21.0, 118.0, 22.0 ],
									"text" : "get-values-newShiftr"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 719.0, 700.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-18",
													"linecount" : 8,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 444.0, 210.0, 150.0, 114.0 ],
													"text" : "Incoming wind values\n\nfaster they are the faster the counter will count out values that are subtracted from the saturation - effectively making the colours quiver"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 127.0, 50.0, 22.0 ],
													"text" : "110"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "slider",
													"min" : 80.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 134.542370866043711, 16.0, 233.0, 74.177276611328125 ],
													"size" : 200.0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 511.203819547414014, 50.0, 22.0 ],
													"text" : "0.99"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.042370866043711, 193.909202848195264, 29.5, 22.0 ],
													"text" : "100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 206.542370866043711, 163.909202848195264, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-86",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 206.542370866043711, 132.200619050501246, 32.0, 22.0 ],
													"text" : "< 85"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 206.542370866043711, 227.595733642578125, 29.5, 22.0 ],
													"text" : "50"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-79",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.25, 227.595733642578125, 29.5, 22.0 ],
													"text" : "10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 189.0, 193.909202848195264, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 158.0, 193.909202848195264, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 132.13829026780968, 227.595733642578125, 29.5, 22.0 ],
													"text" : "100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 95.0, 227.595733642578125, 29.5, 22.0 ],
													"text" : "50"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 126.0, 193.909202848195264, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 95.0, 193.909202848195264, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 154.0, 163.909202848195264, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 154.0, 133.887149844884107, 46.0, 22.0 ],
													"text" : ">= 120"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 102.0, 163.909202848195264, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 102.0, 133.887149844884107, 46.0, 22.0 ],
													"text" : ">= 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 317.542370866043711, 414.409202848195264, 29.5, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 317.542370866043711, 450.240745816945264, 29.5, 22.0 ],
													"text" : "-"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 50.0, 163.909202848195264, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 133.887149844884107, 39.0, 22.0 ],
													"text" : ">= 85"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 47.0, 43.0, 22.0 ],
													"text" : "r Wind"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.399757236242522, 190.477264404296875, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.0, 438.177276611328125, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 100.0, 329.058807373046875, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 365.177276611328125, 69.0, 22.0 ],
													"text" : "metro 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 50.0, 402.177276611328125, 85.0, 22.0 ],
													"text" : "counter 2 1 30"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-29",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 317.542370866043711, 511.203819547414014, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 317.542370866043711, 480.203819547414014, 39.0, 22.0 ],
													"text" : "/ 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "slider",
													"min" : 1.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 317.542370866043711, 265.909202848195264, 20.0, 140.0 ],
													"size" : 100.0
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-92",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 317.542357999999922, 593.203826642578179, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"order" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 4,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 3,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 2,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"order" : 1,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"order" : 2,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"order" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"order" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 1,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"order" : 0,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 1 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 3,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 2,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 1,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"order" : 0,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 1 ],
													"source" : [ "obj-51", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-52", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-52", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-55", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 3 ],
													"order" : 1,
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"order" : 0,
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1395.0, 103.885345458984375, 59.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p WINDY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 465.84919931053264, 94.494846276507587, 43.0, 22.0 ],
									"text" : "s Rain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 102.0, 103.0, 1256.0, 928.0 ],
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
										"showontab" : 0,
										"assistshowspatchername" : 0,
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-96",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.98878873877743, 325.844818057207135, 99.0, 22.0 ],
													"text" : "0.2 0.66 1."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1335.012659948755982, 836.857421875, 50.0, 23.0 ],
													"text" : "s LUX#"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1335.012659948755982, 670.084318317711904, 346.0, 135.0 ],
													"size" : 2000.0
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.811764705882353, 0.07843137254902, 0.07843137254902, 1.0 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
													"bgfillcolor_color1" : [ 0.811764705882353, 0.07843137254902, 0.07843137254902, 1.0 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
													"bgfillcolor_proportion" : 0.5,
													"bgfillcolor_type" : "gradient",
													"fontsize" : 36.0,
													"gradient" : 1,
													"id" : "obj-61",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1328.34921039699725, 611.357421875, 119.0, 49.0 ],
													"text" : "3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1475.0, 446.0, 150.0, 20.0 ],
													"text" : "every change    1      0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1592.0, 412.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1556.0, 412.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1480.0, 419.857421875, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1539.0, 303.0, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1487.0, 300.423119053658638, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 1512.0, 349.0, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1340.757347644551601, 567.21484375, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-35",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 698.750000000000227, 229.423119053658581, 72.0, 23.0 ],
													"text" : "1 0.06 0.06"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-36",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 731.207594682471836, 325.844818057207135, 32.0, 21.0 ],
													"text" : "pink"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 631.354522701201745, 325.844818057207135, 48.0, 21.0 ],
													"text" : "orange"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-34",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 604.354522701201631, 229.423119053658581, 75.0, 23.0 ],
													"text" : "0.98 0.12 0."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-31",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 978.15813724755435, 168.844818057207135, 62.0, 21.0 ],
													"text" : "light blue"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 341.935830649734726, 138.453758702096081, 72.0, 23.0 ],
													"text" : "1 0.39 0.02"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1420.5, 84.315722871451442, 143.0, 40.0 ],
													"text" : "move saturation value"
												}

											}
, 											{
												"box" : 												{
													"attr" : "saturation",
													"fontface" : 0,
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-29",
													"maxclass" : "attrui",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1417.34921039699725, 137.578235078482692, 150.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 1417.34921039699725, 44.999999874999986, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"linecount" : 5,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 707.250000000000227, 791.0, 51.0, 76.0 ],
													"text" : "0.204 0.651247 0.996 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1333.849210396997023, 314.646242559407824, 71.0, 22.0 ],
													"text" : "s #0_speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 576.604522701201631, 419.857421875, 150.0, 20.0 ],
													"text" : "curent colour"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.98878873877743, 475.857421875, 63.0, 20.0 ],
													"text" : "sent value"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-88",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.98878873877743, 500.857421875, 92.0, 22.0 ],
													"text" : "0.15 0. 0.76"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 44.98878873877743, 300.423119053658638, 96.0, 20.0 ],
													"text" : "stored value"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-154",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 161.104522701201631, 266.844818057207135, 40.0, 22.0 ],
													"text" : "t b l b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-165",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1333.849210396997023, 283.646242559407824, 35.0, 22.0 ],
													"text" : "6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-166",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 217.604522701201631, 268.844818057207135, 169.0, 20.0 ],
													"text" : "Switches between two colours"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-172",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 238.104522701201631, 397.857421875, 96.0, 20.0 ],
													"text" : "colour #1 value"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-179",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 401.354522701201631, 419.857421875, 90.0, 20.0 ],
													"text" : "colour #2 value"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-180",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 608.354522701201631, 588.857421875, 69.0, 22.0 ],
													"text" : "r #0_speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-182",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 604.354522701201631, 743.857421875, 69.0, 22.0 ],
													"text" : "r #0_speed"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-183",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.104522701201631, 885.857421875, 74.0, 22.0 ],
													"text" : "pack 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-217",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.354522701201631, 691.857421875, 59.0, 22.0 ],
													"text" : "1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-218",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 510.354522701201631, 656.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-219",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.354522701201631, 624.857421875, 167.0, 22.0 ],
													"text" : "1., 1. 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-220",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.354522701201631, 588.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-222",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 331.104522701201631, 691.857421875, 59.0, 22.0 ],
													"text" : "0.66"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-223",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 336.104522701201631, 654.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-228",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 336.104522701201631, 624.857421875, 167.0, 22.0 ],
													"text" : "0.66, 0.66 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-233",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 336.104522701201631, 588.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-235",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 156.104522701201631, 691.857421875, 59.0, 22.0 ],
													"text" : "0.2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-236",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 161.104522701201631, 624.857421875, 167.0, 22.0 ],
													"text" : "0.2, 0.2 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-237",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 161.104522701201631, 593.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-238",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 161.104522701201631, 654.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-244",
													"maxclass" : "swatch",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 755.953077185949951, 382.708596706390381, 521.75, 316.148825168609619 ],
													"saturation" : 0.99
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-245",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 506.354522701201631, 846.857421875, 32.0, 22.0 ],
													"text" : "1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-246",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 506.354522701201631, 811.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-247",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 506.354522701201631, 779.857421875, 167.0, 22.0 ],
													"text" : "0.76, 1. 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-248",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 506.354522701201631, 743.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-249",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 327.104522701201631, 846.857421875, 32.0, 22.0 ],
													"text" : "0.66"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-250",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 332.104522701201631, 809.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-251",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.104522701201631, 779.857421875, 167.0, 22.0 ],
													"text" : "0., 0.66 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-252",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.104522701201631, 743.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-253",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.104522701201631, 846.857421875, 32.0, 22.0 ],
													"text" : "0.2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-255",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.104522701201631, 779.857421875, 167.0, 22.0 ],
													"text" : "0.15, 0.2 6000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-256",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.104522701201631, 743.857421875, 50.5, 22.0 ],
													"text" : "join 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-259",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 509.604522701201631, 486.857421875, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-260",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 567.354522701201631, 520.857421875, 32.0, 22.0 ],
													"text" : "1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-261",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 488.604522701201631, 520.857421875, 29.5, 22.0 ],
													"text" : "\\,"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-263",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 439.604522701201631, 520.857421875, 44.0, 22.0 ],
													"text" : "0.2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-264",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 526.854522701201631, 520.857421875, 32.0, 22.0 ],
													"text" : "0.66"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-265",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "float", "float", "float" ],
													"patching_rect" : [ 499.354522701201631, 452.857421875, 87.0, 22.0 ],
													"text" : "unpack 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-266",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 182.604522701201631, 486.857421875, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-267",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 282.104522701201631, 520.857421875, 59.0, 22.0 ],
													"text" : "0.76"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-268",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 210.104522701201631, 520.857421875, 29.5, 22.0 ],
													"text" : "\\,"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-269",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.104522701201631, 520.857421875, 59.0, 22.0 ],
													"text" : "0.15"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-270",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.104522701201631, 520.857421875, 39.0, 22.0 ],
													"text" : "0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-271",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "float", "float", "float" ],
													"patching_rect" : [ 157.104522701201631, 451.857421875, 87.0, 22.0 ],
													"text" : "unpack 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-272",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 157.104522701201631, 809.857421875, 40.0, 22.0 ],
													"text" : "line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-273",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 499.354522701201631, 412.0, 64.0, 35.0 ],
													"text" : "0.2 0.66 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-274",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 161.104522701201631, 397.857421875, 92.0, 22.0 ],
													"text" : "0.15 0. 0.76"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-216",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 692.707594682471836, 17.315722871451442, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-210",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 179.831307948533095, 136.561154884303221, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-211",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 179.831307948533095, 104.561154884303221, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-212",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 231.104522701201631, 43.453758702096081, 39.0, 22.0 ],
													"text" : ">= 60"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-213",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 179.831307948533095, 43.453758702096081, 46.0, 22.0 ],
													"text" : "< 1500"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-215",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 179.831307948533095, 76.687401280221081, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-201",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 313.214530532884282, 138.453758702096081, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-202",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 313.214530532884282, 106.453758702096081, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-203",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 354.935830649734726, 43.453758702096081, 39.0, 22.0 ],
													"text" : ">= 40"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-204",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 313.214530532884282, 43.453758702096081, 32.0, 22.0 ],
													"text" : "< 60"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-209",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 313.214530532884282, 78.580005098013942, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-192",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 444.269712066145075, 138.453758702096081, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-196",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 448.099065962168652, 106.453758702096081, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-197",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 475.099066975447613, 43.453758702096081, 39.0, 22.0 ],
													"text" : ">= 20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-198",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 429.269712066145075, 43.453758702096081, 32.0, 22.0 ],
													"text" : "< 40"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-200",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 470.099065962168652, 73.453758702096081, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-186",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 577.744900921841463, 138.423119053658581, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-187",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 579.849066975447613, 106.423119053658581, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-188",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 624.165189364943444, 48.453758702096081, 39.0, 22.0 ],
													"text" : ">= 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-189",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 579.849066975447613, 48.453758702096081, 32.0, 22.0 ],
													"text" : "< 20"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-191",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 579.849066975447613, 78.549365449576442, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-184",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 692.707594682471836, 138.423119053658581, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-181",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 820.609621779360168, 137.578235078482692, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-174",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 826.0, 100.240129569252815, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-175",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 865.25, 42.774023867902883, 33.0, 22.0 ],
													"text" : ">= 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-176",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 826.0, 42.774023867902883, 29.5, 22.0 ],
													"text" : "< 6"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-178",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 826.0, 72.366375965170675, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-173",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1056.112730918699299, 130.274023867902997, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-167",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 940.40813724755435, 105.274023867902997, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-168",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 983.443497702502555, 42.774023867902883, 33.0, 22.0 ],
													"text" : ">= 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-169",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 940.40813724755435, 42.774023867902883, 29.5, 22.0 ],
													"text" : "< 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-171",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 940.40813724755435, 77.400270263820858, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-153",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 694.665189364943444, 108.315722871451442, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-152",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 742.665189364943444, 45.315722871451442, 33.0, 22.0 ],
													"text" : ">= 6"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-151",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 693.707594682471836, 45.315722871451442, 32.0, 22.0 ],
													"text" : "< 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 694.665189364943444, 80.441969267369302, 29.5, 22.0 ],
													"text" : "&&"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 177.831307948533095, 15.453758702096081, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 429.269712066145075, 8.453758702096081, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 932.40813724755435, 14.774023867902883, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 814.5, 14.774023867902883, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-119",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 940.40813724755435, 133.815722871451442, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 51.0, 137.423119053658581, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-86",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 721.750000000000227, 138.423119053658581, 72.0, 23.0 ],
													"text" : "1 0.06 0.06"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-73",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 460.435830649734726, 164.844818057207135, 88.0, 21.0 ],
													"text" : "orange/yellow"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-43",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.099066975447613, 139.46481805720714, 68.0, 23.0 ],
													"text" : "0.8 0.24 0."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-46",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 631.354522701201745, 164.844818057207135, 48.0, 21.0 ],
													"text" : "orange"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 247.081307948533095, 164.844818057207135, 42.0, 20.0 ],
													"text" : "green"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 970.443497702502555, 133.815722871451442, 65.0, 22.0 ],
													"text" : "0.2 0.66 1."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-127",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 570.599066975447613, 14.912059698547523, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-126",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 303.964530532884282, 15.453758702096081, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-125",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 44.315722871451442, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571671,
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 51.0, 107.304791492514425, 50.0, 23.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571671,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 1056.112730918699299, 95.866375965170789, 50.0, 23.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571592,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 1056.112730918699299, 66.274023867902883, 29.5, 23.0 ],
													"text" : "< 2"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571592,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 51.0, 77.712439395246633, 55.0, 23.0 ],
													"text" : ">= 1500"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 161.104522701201631, 230.423119053658638, 71.0, 22.0 ],
													"text" : "0.2 0.66 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-262",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1088.112729607397114, 162.958235078482687, 36.0, 20.0 ],
													"text" : " Blue"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-254",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 848.75, 164.844818057207135, 75.0, 20.0 ],
													"text" : "pink/purple"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-243",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 754.207594682471836, 164.844818057207135, 32.0, 21.0 ],
													"text" : "pink"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-234",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1088.112729607397114, 130.274023867902997, 72.0, 22.0 ],
													"text" : "0.15 0. 0.76"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-232",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 848.75, 137.578235078482692, 72.0, 22.0 ],
													"text" : "0.83 0. 0.39"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-231",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 604.354522701201631, 138.423119053658581, 75.0, 23.0 ],
													"text" : "0.84 0.17 0."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571871,
													"id" : "obj-230",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.622669812836875, 138.99545770564464, 75.0, 23.0 ],
													"text" : "0.77 0.99 0."
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571823,
													"id" : "obj-229",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 137.423119053658581, 89.0, 23.0 ],
													"text" : "0.99 0.69 0.17"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571827,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1056.112730918699299, 33.877307344107692, 48.0, 23.0 ],
													"text" : "r LUX#"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-193",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 988.828077185949951, 817.543952669382861, 56.0, 22.0 ],
													"text" : "s BValue"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-194",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 924.089775845996428, 817.543952669382861, 57.0, 22.0 ],
													"text" : "s GValue"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-195",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 852.604522701201631, 817.543952669382861, 56.0, 22.0 ],
													"text" : "s RValue"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.80648067301663,
													"id" : "obj-185",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 368.435830649734726, 164.844818057207135, 44.0, 21.0 ],
													"text" : "yellow"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.613915980571802,
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "float", "float", "float" ],
													"patching_rect" : [ 852.604522701201631, 787.084318317711904, 91.0, 23.0 ],
													"text" : "unpack 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-143",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1336.34921039699725, 39.999999874999986, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-144",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 852.604522701201631, 874.543944875000079, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-229", 0 ],
													"order" : 0,
													"source" : [ "obj-100", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-100", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-193", 0 ],
													"source" : [ "obj-103", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-194", 0 ],
													"source" : [ "obj-103", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-195", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-203", 0 ],
													"order" : 0,
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-204", 0 ],
													"order" : 1,
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-188", 0 ],
													"order" : 0,
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-189", 0 ],
													"order" : 1,
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-165", 1 ],
													"order" : 0,
													"source" : [ "obj-143", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-165", 0 ],
													"order" : 1,
													"source" : [ "obj-143", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"source" : [ "obj-152", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"order" : 1,
													"source" : [ "obj-153", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"order" : 0,
													"source" : [ "obj-153", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-273", 1 ],
													"order" : 0,
													"source" : [ "obj-154", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-273", 0 ],
													"order" : 1,
													"source" : [ "obj-154", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-274", 0 ],
													"source" : [ "obj-154", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-154", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-165", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-119", 0 ],
													"order" : 1,
													"source" : [ "obj-167", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 0,
													"source" : [ "obj-167", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 1 ],
													"source" : [ "obj-168", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"source" : [ "obj-169", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-167", 0 ],
													"source" : [ "obj-171", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-181", 0 ],
													"order" : 1,
													"source" : [ "obj-174", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-232", 0 ],
													"order" : 0,
													"source" : [ "obj-174", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 1 ],
													"source" : [ "obj-175", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 0 ],
													"source" : [ "obj-176", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-174", 0 ],
													"source" : [ "obj-178", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 3 ],
													"order" : 0,
													"source" : [ "obj-180", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 3 ],
													"order" : 1,
													"source" : [ "obj-180", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-237", 3 ],
													"order" : 2,
													"source" : [ "obj-180", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 3 ],
													"order" : 0,
													"source" : [ "obj-182", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-252", 3 ],
													"order" : 1,
													"source" : [ "obj-182", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-256", 3 ],
													"order" : 2,
													"source" : [ "obj-182", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-244", 0 ],
													"order" : 0,
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 1 ],
													"order" : 1,
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-186", 0 ],
													"order" : 1,
													"source" : [ "obj-187", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-231", 0 ],
													"order" : 0,
													"source" : [ "obj-187", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-191", 1 ],
													"source" : [ "obj-188", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-191", 0 ],
													"source" : [ "obj-189", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-187", 0 ],
													"source" : [ "obj-191", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-192", 0 ],
													"order" : 1,
													"source" : [ "obj-196", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 0,
													"source" : [ "obj-196", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-200", 1 ],
													"source" : [ "obj-197", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-200", 0 ],
													"source" : [ "obj-198", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-196", 0 ],
													"source" : [ "obj-200", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-201", 0 ],
													"order" : 1,
													"source" : [ "obj-202", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 0,
													"source" : [ "obj-202", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-209", 1 ],
													"source" : [ "obj-203", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-209", 0 ],
													"source" : [ "obj-204", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-202", 0 ],
													"source" : [ "obj-209", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-210", 0 ],
													"order" : 1,
													"source" : [ "obj-211", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-230", 0 ],
													"order" : 0,
													"source" : [ "obj-211", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 1 ],
													"source" : [ "obj-212", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 0 ],
													"source" : [ "obj-213", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-211", 0 ],
													"source" : [ "obj-215", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-151", 0 ],
													"order" : 1,
													"source" : [ "obj-216", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-152", 0 ],
													"order" : 0,
													"source" : [ "obj-216", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-217", 1 ],
													"order" : 0,
													"source" : [ "obj-218", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-217", 0 ],
													"order" : 1,
													"source" : [ "obj-218", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-218", 0 ],
													"source" : [ "obj-219", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-219", 1 ],
													"order" : 0,
													"source" : [ "obj-220", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-219", 0 ],
													"order" : 1,
													"source" : [ "obj-220", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-222", 1 ],
													"order" : 0,
													"source" : [ "obj-223", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-222", 0 ],
													"order" : 1,
													"source" : [ "obj-223", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-223", 0 ],
													"source" : [ "obj-228", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-229", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-229", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-230", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-230", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-231", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-231", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-232", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-232", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-228", 1 ],
													"order" : 0,
													"source" : [ "obj-233", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-228", 0 ],
													"order" : 1,
													"source" : [ "obj-233", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-234", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-234", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-238", 0 ],
													"source" : [ "obj-236", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-236", 1 ],
													"order" : 0,
													"source" : [ "obj-237", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-236", 0 ],
													"order" : 1,
													"source" : [ "obj-237", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-235", 1 ],
													"order" : 0,
													"source" : [ "obj-238", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-235", 0 ],
													"order" : 1,
													"source" : [ "obj-238", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"order" : 1,
													"source" : [ "obj-244", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-144", 0 ],
													"order" : 0,
													"source" : [ "obj-244", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"order" : 2,
													"source" : [ "obj-244", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-183", 2 ],
													"source" : [ "obj-245", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-245", 1 ],
													"order" : 0,
													"source" : [ "obj-246", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-245", 0 ],
													"order" : 1,
													"source" : [ "obj-246", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-246", 0 ],
													"source" : [ "obj-247", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-247", 1 ],
													"order" : 0,
													"source" : [ "obj-248", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-247", 0 ],
													"order" : 1,
													"source" : [ "obj-248", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-183", 1 ],
													"source" : [ "obj-249", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-249", 1 ],
													"order" : 0,
													"source" : [ "obj-250", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-249", 0 ],
													"order" : 1,
													"source" : [ "obj-250", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-250", 0 ],
													"source" : [ "obj-251", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-251", 1 ],
													"order" : 0,
													"source" : [ "obj-252", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-251", 0 ],
													"order" : 1,
													"source" : [ "obj-252", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-183", 0 ],
													"source" : [ "obj-253", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-272", 0 ],
													"source" : [ "obj-255", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-255", 1 ],
													"order" : 0,
													"source" : [ "obj-256", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-255", 0 ],
													"order" : 1,
													"source" : [ "obj-256", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-261", 0 ],
													"source" : [ "obj-259", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 0 ],
													"order" : 1,
													"source" : [ "obj-260", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 2 ],
													"order" : 0,
													"source" : [ "obj-260", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 1 ],
													"order" : 0,
													"source" : [ "obj-261", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-252", 1 ],
													"order" : 1,
													"source" : [ "obj-261", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-256", 1 ],
													"order" : 2,
													"source" : [ "obj-261", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-237", 0 ],
													"order" : 1,
													"source" : [ "obj-263", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-256", 2 ],
													"order" : 0,
													"source" : [ "obj-263", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 0 ],
													"order" : 1,
													"source" : [ "obj-264", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-252", 2 ],
													"order" : 0,
													"source" : [ "obj-264", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-259", 0 ],
													"order" : 0,
													"source" : [ "obj-265", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-260", 1 ],
													"order" : 0,
													"source" : [ "obj-265", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-260", 0 ],
													"order" : 1,
													"source" : [ "obj-265", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-263", 1 ],
													"order" : 1,
													"source" : [ "obj-265", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-263", 0 ],
													"order" : 2,
													"source" : [ "obj-265", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-264", 1 ],
													"order" : 0,
													"source" : [ "obj-265", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-264", 0 ],
													"order" : 1,
													"source" : [ "obj-265", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-268", 0 ],
													"source" : [ "obj-266", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 2 ],
													"order" : 0,
													"source" : [ "obj-267", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 0 ],
													"order" : 1,
													"source" : [ "obj-267", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 1 ],
													"order" : 0,
													"source" : [ "obj-268", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 1 ],
													"order" : 1,
													"source" : [ "obj-268", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-237", 1 ],
													"order" : 2,
													"source" : [ "obj-268", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-237", 2 ],
													"order" : 0,
													"source" : [ "obj-269", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-256", 0 ],
													"order" : 1,
													"source" : [ "obj-269", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 2 ],
													"order" : 0,
													"source" : [ "obj-270", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-252", 0 ],
													"order" : 1,
													"source" : [ "obj-270", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-266", 0 ],
													"order" : 1,
													"source" : [ "obj-271", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-267", 1 ],
													"order" : 0,
													"source" : [ "obj-271", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-267", 0 ],
													"order" : 1,
													"source" : [ "obj-271", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-269", 1 ],
													"order" : 0,
													"source" : [ "obj-271", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-269", 0 ],
													"order" : 2,
													"source" : [ "obj-271", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-270", 1 ],
													"order" : 0,
													"source" : [ "obj-271", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-270", 0 ],
													"order" : 1,
													"source" : [ "obj-271", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-253", 1 ],
													"order" : 0,
													"source" : [ "obj-272", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-253", 0 ],
													"order" : 1,
													"source" : [ "obj-272", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-265", 0 ],
													"source" : [ "obj-273", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-271", 0 ],
													"order" : 0,
													"source" : [ "obj-274", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 1 ],
													"order" : 1,
													"source" : [ "obj-274", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-244", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-39", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-39", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-168", 0 ],
													"order" : 0,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-169", 0 ],
													"order" : 1,
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-154", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-197", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-198", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-212", 0 ],
													"order" : 0,
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-213", 0 ],
													"order" : 1,
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-173", 0 ],
													"order" : 1,
													"source" : [ "obj-67", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-234", 0 ],
													"order" : 0,
													"source" : [ "obj-67", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-175", 0 ],
													"order" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-176", 0 ],
													"order" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 0,
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-274", 1 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1212.542370866043711, 109.12567138671875, 130.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p LEDswitcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 950.659180700778961, 94.494846276507587, 45.0, 22.0 ],
									"text" : "s Wind"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 704.766922026872635, 94.494846276507587, 51.0, 22.0 ],
									"text" : "s Pollen"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.100242763757478, 60.749581336975098, 67.0, 22.0 ],
									"text" : "clip 0 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-225",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 223.659179508686066, 94.494846276507587, 48.0, 22.0 ],
									"text" : "s LUX#"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.100242763757478, 183.828179530368061, 82.0, 20.0 ],
									"text" : "LUX Sensor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 288.433585315942537, 183.828179530368061, 82.0, 20.0 ],
									"text" : "RAIN Sensor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 529.766922026872635, 184.328179649577351, 97.0, 20.0 ],
									"text" : "POLLEN Sensor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 773.100253850221634, 184.328179649577351, 82.0, 20.0 ],
									"text" : "WIND Sensor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 773.100253850221634, 94.494846276507587, 110.0, 22.0 ],
									"text" : "scale 78 250 0 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 773.100253850221634, 125.328179649577351, 226.0, 51.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 892.100253850221634, 94.494846276507587, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 529.766922026872635, 94.494846276507587, 103.0, 22.0 ],
									"text" : "scale 0 100 0 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 529.766922026872635, 125.328179649577351, 226.0, 51.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 650.766922026872635, 94.494846276507587, 48.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.433585315942537, 94.494846276507587, 110.0, 22.0 ],
									"text" : "scale 0 1024 0 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.100242763757478, 94.494846276507587, 110.0, 22.0 ],
									"text" : "scale 0 2000 0 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 288.433585315942537, 124.828179530368061, 226.0, 51.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 49.100242763757478, 124.828179530368061, 226.0, 51.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 409.933585315942537, 94.494846276507587, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 167.600242763757478, 94.494846276507587, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1269.600242763757478, 66.249581336975098, 96.268801466860168, 20.0 ],
									"text" : "SET SPEED"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1212.542370866043711, 27.75616455078125, 102.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.717647058823529, 0.066666666666667, 0.603921568627451, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.717647058823529, 0.066666666666667, 0.603921568627451, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"fontsize" : 20.0,
									"gradient" : 1,
									"id" : "obj-239",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1212.542370866043711, 60.749581336975098, 53.0, 31.0 ],
									"text" : "6000"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1018.849200443021118, 191.52069091796875, 110.0, 26.0 ],
									"text" : "s bangOn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1212.542370866043711, 138.436253799422275, 151.0, 22.0 ],
									"text" : "prepend bgfillcolor"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.827450980392157, 0.796078431372549, 0.823529411764706, 1.0 ],
									"blinkcolor" : [ 0.6, 0.117647058823529, 0.662745098039216, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1018.849200443021118, 12.25, 164.078179649577351, 164.078179649577351 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.066666666666667, 0.662745098039216, 0.525490196078431, 1.0 ],
									"bordercolor" : [ 0.031372549019608, 0.031372549019608, 0.031372549019608, 1.0 ],
									"id" : "obj-71",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.000001013278961, 12.25, 988.0, 205.27069091796875 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.204, 0.65124705882353, 0.996, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1189.849200443021118, 12.25, 183.58438189268918, 164.078179649577351 ],
									"proportion" : 0.39
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-1", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"order" : 1,
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"order" : 0,
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"order" : 1,
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"order" : 0,
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"order" : 1,
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"order" : 0,
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"order" : 2,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"order" : 1,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-225", 0 ],
									"order" : 0,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"source" : [ "obj-239", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-239", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 1 ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 627.0, 107.0, 97.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Shiftr-STUFFS"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 689.5, 784.0, 113.0, 22.0 ],
					"text" : "zmap 0. 1024. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 689.5, 806.736206000000038, 206.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 895.0, 524.207520000000045, 206.0, 128.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 2
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 772.5, 290.0, 76.0, 19.0 ],
					"text" : "s pin_setting"
				}

			}
, 			{
				"box" : 				{
					"bubbleusescolors" : 1,
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 188.0, 673.0, 18.0 ],
					"text" : "Make sure you have the \"arduinoMaxInOutforDummies_57600_baud.ino \" Arduino sketch uploaded to your board.",
					"textcolor" : [ 0.831372549019608, 0.062745098039216, 0.725490196078431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-117",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 974.423095999999987, 683.0, 525.369933999999944, 43.0 ],
					"text" : "To communicate serially between the Arduino soft and hardware, while the max-patch is open, close the port. To communicate between Max and the Arduino board, remember to open the serial port again."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-114",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.5, 244.5, 209.0, 32.0 ],
					"text" : "After Setting up Arduino, look at this subpatcher to set pin states."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 24.0,
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 24.5, 351.0, 30.0 ],
					"text" : "ArduinoInOutForDuffield_Uno"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.0, 0.103115, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 24.0,
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1497.0, 789.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Century Gothic",
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 772.5, 172.5, 57.0, 92.0 ],
									"text" : "[p 5 1], [p 6 1], [p 7 1], [p 8 1], [p 9 2], [p 10 2], [p 11 2]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 499.08828699999998, 934.614928999999961, 322.0, 18.0 ],
									"text" : "With Analog Pins values will come in the range 0-1023"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 732.088256999999999, 803.614928999999961, 141.0, 16.0 ],
									"text" : "from Analog In Pin19 (A5)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 694.088256999999999, 825.614928999999961, 141.0, 16.0 ],
									"text" : "from Analog In Pin18 (A4)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 656.088256999999999, 847.614928999999961, 141.0, 16.0 ],
									"text" : "from Analog In Pin17 (A3)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 619.088256999999999, 870.614928999999961, 141.0, 16.0 ],
									"text" : "from Analog In Pin16 (A2)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 581.088256999999999, 892.614928999999961, 141.0, 16.0 ],
									"text" : "from Analog In Pin15 (A1)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 543.088256999999999, 915.614928999999961, 139.0, 16.0 ],
									"text" : "from Analog In Pin14 (A0)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-48",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 688.088256999999999, 803.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-49",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 650.088256999999999, 825.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-46",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 611.088256999999999, 847.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-47",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 573.088256999999999, 870.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 535.088256999999999, 892.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 496.08828699999998, 915.614928999999961, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-61",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 454.0, 832.600952000000007, 34.0, 46.0 ],
									"text" : "from Digi In Pin13"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-62",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 417.0, 832.600952000000007, 34.0, 46.0 ],
									"text" : "from Digi In Pin12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-59",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 832.600952000000007, 36.0, 46.0 ],
									"text" : "from Digi In Pin11"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-60",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 343.0, 832.600952000000007, 34.0, 46.0 ],
									"text" : "from Digi In Pin10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 306.0, 832.600952000000007, 41.0, 36.0 ],
									"text" : "from Digi In Pin9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-58",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 268.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-81",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 229.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-82",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 190.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-53",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-54",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-52",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 832.600952000000007, 35.0, 46.0 ],
									"text" : "from Digi In Pin3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 10.0,
									"id" : "obj-83",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 832.600952000000007, 33.0, 46.0 ],
									"text" : "fromDigi In Pin2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 460.705871999999999, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 422.323516999999981, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 383.94116200000002, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 345.55883799999998, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.176483000000019, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 268.794128000000001, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 230.411743000000001, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 192.02941899999999, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.647064, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 115.264708999999996, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.882355000000004, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 38.5, 793.600952000000007, 32.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleside" : 3,
									"fontface" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 24.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.5, 716.178954999999974, 263.0, 30.0 ],
									"text" : "MONITOR INPUT PINS"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.8, 0.0, 0.103115, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 18,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 174.0, 1415.0, 719.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Century Gothic",
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "Analog Pin 5",
													"id" : "obj-56",
													"index" : 18,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1452.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 4",
													"id" : "obj-57",
													"index" : 17,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1377.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 3",
													"id" : "obj-77",
													"index" : 16,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1302.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 2",
													"id" : "obj-58",
													"index" : 15,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1227.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 1",
													"id" : "obj-59",
													"index" : 14,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1149.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 0",
													"id" : "obj-60",
													"index" : 13,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1073.81005899999991, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 13",
													"id" : "obj-73",
													"index" : 12,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 968.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 12",
													"id" : "obj-61",
													"index" : 11,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 879.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 11",
													"id" : "obj-71",
													"index" : 10,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 789.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 10",
													"id" : "obj-70",
													"index" : 9,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 9",
													"id" : "obj-69",
													"index" : 8,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 614.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 8",
													"id" : "obj-65",
													"index" : 7,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 529.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 7",
													"id" : "obj-62",
													"index" : 6,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 444.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 6",
													"id" : "obj-63",
													"index" : 5,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 359.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 5",
													"id" : "obj-64",
													"index" : 4,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 4",
													"id" : "obj-72",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 189.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 3",
													"id" : "obj-74",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 104.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 2",
													"id" : "obj-75",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 411.910004000000015, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubbleside" : 3,
													"fontface" : 1,
													"fontname" : "Century Gothic",
													"fontsize" : 48.0,
													"id" : "obj-55",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 29.559998, 473.0, 65.0 ],
													"text" : "RECEIVE PIN VALUES"
												}

											}
, 											{
												"box" : 												{
													"bubbleside" : 3,
													"fontface" : 1,
													"fontname" : "Century Gothic",
													"fontsize" : 24.0,
													"id" : "obj-54",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1073.81005899999991, 94.559997999999993, 172.0, 36.0 ],
													"text" : "ANALOG PINS"
												}

											}
, 											{
												"box" : 												{
													"bubbleside" : 3,
													"fontface" : 1,
													"fontname" : "Century Gothic",
													"fontsize" : 24.0,
													"id" : "obj-53",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 94.559997999999993, 160.0, 36.0 ],
													"text" : "DIGITAL PINS"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1452.81005899999991, 301.0, 75.0, 19.0 ],
													"text" : "r Pin19_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-52",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1452.81005899999991, 346.98001099999999, 43.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1377.81005899999991, 261.0, 75.0, 21.0 ],
													"text" : "r Pin18_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-50",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1377.81005899999991, 301.0, 43.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1302.81005899999991, 221.0, 75.0, 21.0 ],
													"text" : "r Pin17_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-42",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1302.81005899999991, 261.0, 43.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1227.81005899999991, 201.0, 75.0, 21.0 ],
													"text" : "r Pin16_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-39",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1227.81005899999991, 241.0, 43.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-40",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1227.81005899999991, 182.0, 133.0, 19.0 ],
													"text" : "from Analog In Pin15 (A1)"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1149.81005899999991, 182.0, 75.0, 21.0 ],
													"text" : "r Pin15_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-37",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1149.81005899999991, 221.0, 43.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 968.0, 163.0, 73.0, 21.0 ],
													"text" : "r Pin13_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 968.0, 144.0, 90.0, 19.0 ],
													"text" : "fromDigi In Pin13"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 968.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 879.0, 163.0, 73.0, 21.0 ],
													"text" : "r Pin12_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-30",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 879.0, 144.0, 90.0, 19.0 ],
													"text" : "fromDigi In Pin12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 879.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 789.0, 163.0, 73.0, 21.0 ],
													"text" : "r Pin11_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-27",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 789.0, 144.0, 90.0, 19.0 ],
													"text" : "fromDigi In Pin11"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 789.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 699.0, 163.0, 73.0, 21.0 ],
													"text" : "r Pin10_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 144.0, 90.0, 19.0 ],
													"text" : "fromDigi In Pin10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 699.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 614.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin9_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-20",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 614.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 614.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 529.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin8_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 529.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin8"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 529.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 444.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin7_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 444.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin7"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 444.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 359.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin6_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 359.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin6"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 359.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 274.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin5_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 274.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 189.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin4_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 189.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 189.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 104.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin3_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 104.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 104.0, 195.0, 32.0, 32.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1073.81005899999991, 163.0, 75.0, 21.0 ],
													"text" : "r Pin14_AnaIn"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.0, 163.0, 67.0, 21.0 ],
													"text" : "r Pin2_DigiIn"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-68",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1527.81005899999991, 301.0, 141.0, 19.0 ],
													"text" : "from Analog In Pin19 (A5)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-67",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1452.81005899999991, 261.0, 141.0, 19.0 ],
													"text" : "from Analog In Pin18 (A4)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-66",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1377.81005899999991, 221.0, 141.0, 19.0 ],
													"text" : "from Analog In Pin17 (A3)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-78",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1302.81005899999991, 201.0, 141.0, 19.0 ],
													"text" : "from Analog In Pin16 (A2)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-79",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1149.81005899999991, 163.0, 133.0, 19.0 ],
													"text" : "from Analog In Pin15 (A1)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-22",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1073.81005899999991, 144.0, 133.0, 19.0 ],
													"text" : "from Analog In Pin14 (A0)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-83",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 144.0, 85.0, 19.0 ],
													"text" : "fromDigi In Pin2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-44",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 1073.81005899999991, 204.0, 43.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 19.0, 195.0, 32.0, 32.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-74", 0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"order" : 1,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-63", 0 ],
													"order" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"order" : 1,
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-60", 0 ],
													"order" : 0,
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"order" : 1,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-62", 0 ],
													"order" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 1,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-65", 0 ],
													"order" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-69", 0 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-70", 0 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"order" : 1,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-71", 0 ],
													"order" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"order" : 1,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-61", 0 ],
													"order" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-73", 0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 1,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-59", 0 ],
													"order" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-58", 0 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-72", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-77", 0 ],
													"order" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"order" : 1,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-57", 0 ],
													"order" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-56", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-64", 0 ],
													"order" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"order" : 1,
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-75", 0 ],
													"order" : 0,
													"source" : [ "obj-88", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 35.588196000000003, 760.178954999999974, 671.50006099999996, 20.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Century Gothic",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p receive_Input_values"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 603.5, 240.0, 76.0 ],
									"text" : "Message is formatted as follows\n[\nv = command to send value output\n$1 = pin number\n$2 = output value \n]"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 414.5, 109.0, 21.0 ],
									"text" : "Set Pin Number"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 480.5, 322.0, 21.0 ],
									"text" : "We can use a toggle if we're just sending Digital Output"
								}

							}
, 							{
								"box" : 								{
									"bubbleside" : 3,
									"fontface" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 24.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.5, 371.0, 256.0, 30.0 ],
									"text" : "OUTPUT PIN VALUES"
								}

							}
, 							{
								"box" : 								{
									"bubbleside" : 3,
									"fontface" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 24.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.5, 21.0, 282.0, 30.0 ],
									"text" : "HARD CODE PIN STATE"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.689941000000005, 214.5, 240.0, 76.0 ],
									"text" : "Message is formatted as follows\n[\np = command to assign pin\n$1 = pin number\n$2 = pin state (i.e., input, output, PWM) \n]"
								}

							}
, 							{
								"box" : 								{
									"bubbleside" : 3,
									"fontface" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 24.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 21.0, 184.0, 30.0 ],
									"text" : "SET PIN STATE"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-29",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 554.588256999999999, 90.5, 207.0, 76.0 ],
									"text" : "E.g.Hard Code Pin state, i.e., default when starting up patch, or set state of multiple pins at once. You can send a loadbang to this turn automatically turn on the values you want."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 150.5, 480.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-37",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 520.0, 253.0, 32.0 ],
									"text" : "Value if set to output. If Pin is set to PWM, it needs to be in a range from 0 - 255."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.5, 117.5, 32.5, 19.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.5, 166.5, 34.0, 19.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.5, 141.5, 34.0, 19.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-31",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 127.0, 211.0, 43.0 ],
									"text" : "Set to Input (Digital or Analog) = 0\nSet to Output (Digital) = 1\nSet to PWM = 2"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 64.0, 213.0, 32.0 ],
									"text" : "NOTE: The Analog In pins A0-A6 is termed 14 - 19  in this setup."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-28",
									"maxclass" : "number",
									"maximum" : 255,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 182.0, 528.5, 51.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.5, 674.5, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-25",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 38.5, 414.5, 51.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.5, 579.0, 131.0, 19.0 ],
									"text" : "pak 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.5, 640.0, 56.0, 19.0 ],
									"text" : "[v $1 $2]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.5, 153.5, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.5, 269.0, 76.0, 19.0 ],
									"text" : "s pin_setting"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "number",
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 39.0, 72.5, 51.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.5, 209.0, 131.0, 19.0 ],
									"text" : "pak 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.5, 239.5, 57.0, 19.0 ],
									"text" : "[p $1 $2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-126",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.5, 127.0, 96.0, 19.0 ],
									"text" : "[p 13 1], [p 12 0]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-8", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-8", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-8", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-8", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-8", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-8", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-8", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-8", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-8", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-8", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-8", 17 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-8", 16 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-8", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-8", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-8", 9 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 29.5, 244.5, 199.0, 32.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Century Gothic",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Control_Panel"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 913.5, 714.0, 76.0, 18.0 ],
					"text" : "s Pin19_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 869.5, 691.0, 76.0, 18.0 ],
					"text" : "s Pin18_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 824.5, 714.0, 76.0, 18.0 ],
					"text" : "s Pin17_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 779.5, 691.0, 76.0, 18.0 ],
					"text" : "s Pin16_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 734.5, 714.0, 76.0, 18.0 ],
					"text" : "s Pin15_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 656.5, 691.0, 76.0, 18.0 ],
					"text" : "s Pin14_AnaIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 453.205871999999999, 610.0, 74.0, 18.0 ],
					"text" : "s Pin13_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 414.641692999999975, 587.0, 74.0, 18.0 ],
					"text" : "s Pin12_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 376.44116200000002, 610.0, 74.0, 18.0 ],
					"text" : "s Pin11_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.513396999999998, 587.0, 74.0, 18.0 ],
					"text" : "s Pin10_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.676483000000019, 610.0, 68.0, 18.0 ],
					"text" : "s Pin9_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.385040000000004, 587.0, 68.0, 18.0 ],
					"text" : "s Pin8_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.911743000000001, 610.0, 68.0, 18.0 ],
					"text" : "s Pin7_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 184.256698999999998, 587.0, 68.0, 18.0 ],
					"text" : "s Pin6_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.147064, 610.0, 68.0, 18.0 ],
					"text" : "s Pin5_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 108.128356999999994, 587.0, 68.0, 18.0 ],
					"text" : "s Pin4_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.382355000000004, 610.0, 68.0, 18.0 ],
					"text" : "s Pin3_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 587.0, 68.0, 18.0 ],
					"text" : "s Pin2_DigiIn"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 693.5, 740.0, 322.0, 18.0 ],
					"text" : "With Analog Pins values will come in the range 0-1023"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 957.5, 551.0, 141.0, 16.0 ],
					"text" : "from Analog In Pin19 (A5)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 919.5, 573.0, 141.0, 16.0 ],
					"text" : "from Analog In Pin18 (A4)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 875.5, 596.0, 141.0, 16.0 ],
					"text" : "from Analog In Pin17 (A3)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 831.5, 620.0, 141.0, 16.0 ],
					"text" : "from Analog In Pin16 (A2)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 786.5, 642.0, 141.0, 16.0 ],
					"text" : "from Analog In Pin15 (A1)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 741.5, 666.0, 139.0, 16.0 ],
					"text" : "from Analog In Pin14 (A0)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 453.205871999999999, 635.0, 34.0, 46.0 ],
					"text" : "from Digi In Pin13"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 414.641692999999975, 635.0, 34.0, 46.0 ],
					"text" : "from Digi In Pin12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-59",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 376.44116200000002, 635.0, 36.0, 46.0 ],
					"text" : "from Digi In Pin11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.513396999999998, 635.0, 34.0, 46.0 ],
					"text" : "from Digi In Pin10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.676483000000019, 635.0, 41.0, 36.0 ],
					"text" : "from Digi In Pin9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-58",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.385040000000004, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-81",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.911743000000001, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-82",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 184.256698999999998, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-53",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.147064, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-54",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 108.128356999999994, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-52",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.382355000000004, 635.0, 35.0, 46.0 ],
					"text" : "from Digi In Pin3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-83",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 635.0, 33.0, 46.0 ],
					"text" : "fromDigi In Pin2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 913.5, 551.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-49",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 869.5, 574.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-46",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 824.5, 597.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 779.5, 620.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 734.5, 643.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 689.5, 666.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.205871999999999, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 414.823516999999981, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.44116200000002, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 338.05883799999998, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 299.676483000000019, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.294128000000001, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 222.911743000000001, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 184.52941899999999, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 146.147064, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 107.764708999999996, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 69.382355000000004, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 31.0, 551.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.0, 0.103115, 1.0 ],
					"fontname" : "Century Gothic",
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 19,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 169.0, 79.0, 1237.0, 638.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Century Gothic",
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
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 536.0, 298.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 487.0, 298.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 5",
									"id" : "obj-79",
									"index" : 18,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 702.603942999999958, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 4",
									"id" : "obj-78",
									"index" : 17,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 665.274291999999946, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 3",
									"id" : "obj-77",
									"index" : 16,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 625.944641000000047, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 2",
									"id" : "obj-1",
									"index" : 15,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 587.615050999999994, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 1",
									"id" : "obj-2",
									"index" : 14,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 549.285399999999981, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Analog Pin 0",
									"id" : "obj-3",
									"index" : 13,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.94116200000002, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 13",
									"id" : "obj-73",
									"index" : 12,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 472.626099000000011, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 12",
									"id" : "obj-4",
									"index" : 11,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 434.296447999999998, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 11",
									"id" : "obj-71",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 395.966827000000023, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 10",
									"id" : "obj-70",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 356.637145999999973, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 9",
									"id" : "obj-69",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 319.307525999999996, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 8",
									"id" : "obj-65",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 279.977874999999983, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 7",
									"id" : "obj-50",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.648223999999999, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 6",
									"id" : "obj-43",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 204.318572999999986, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 5",
									"id" : "obj-42",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.988936999999993, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 4",
									"id" : "obj-41",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.659285999999994, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 3",
									"id" : "obj-40",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 88.329643000000004, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Digital Pin 2",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 237.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 12.0,
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 18,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 243.0, 79.0, 1197.0, 677.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Century Gothic",
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "Analog Pin 5",
													"id" : "obj-79",
													"index" : 18,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 703.493103000000019, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 4",
													"id" : "obj-78",
													"index" : 17,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 663.993469000000005, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 3",
													"id" : "obj-77",
													"index" : 16,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 626.49389599999995, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 2",
													"id" : "obj-1",
													"index" : 15,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 586.994263000000046, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 1",
													"id" : "obj-2",
													"index" : 14,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 549.494689999999991, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Analog Pin 0",
													"id" : "obj-3",
													"index" : 13,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.995116999999993, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 13",
													"id" : "obj-73",
													"index" : 12,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.495514000000014, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 12",
													"id" : "obj-4",
													"index" : 11,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.995941000000016, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 11",
													"id" : "obj-71",
													"index" : 10,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 395.49633799999998, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 10",
													"id" : "obj-70",
													"index" : 9,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 356.996735000000001, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 9",
													"id" : "obj-69",
													"index" : 8,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 319.497131000000024, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 8",
													"id" : "obj-65",
													"index" : 7,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 279.997589000000005, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 7",
													"id" : "obj-50",
													"index" : 6,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 242.497971000000007, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 6",
													"id" : "obj-43",
													"index" : 5,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 203.998367000000002, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 5",
													"id" : "obj-42",
													"index" : 4,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 165.498795000000001, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 4",
													"id" : "obj-41",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.999184, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 3",
													"id" : "obj-40",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 88.499595999999997, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Digital Pin 2",
													"id" : "obj-39",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 233.944580000000002, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-63",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 729.25, 204.0, 184.0, 16.0 ],
													"text" : "We ignore the all of the unused pins"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-16",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 133.5, 100.0, 224.0, 46.0 ],
													"text" : "When the serial communication is activated, the serial buffer might contain data that Max-objects misread as error-messages, so we reset the serial-buffer at patch startup for good measure."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 18,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 50.0, 204.0, 671.5, 18.0 ],
													"text" : "spray 18 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 150.0, 54.0, 18.0 ],
													"text" : "itoa"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 130.0, 59.0, 18.0 ],
													"text" : "zl group 7"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 170.0, 69.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Century Gothic",
													"fontsize" : 10.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 50.0, 100.0, 52.0, 18.0 ],
													"text" : "sel 10 13"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-64",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-51", 14 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-51", 13 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-51", 12 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-51", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-51", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-51", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-51", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-51", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-51", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-51", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-51", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-51", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-51", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-51", 11 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-51", 15 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-51", 16 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
													"destination" : [ "obj-79", 0 ],
													"source" : [ "obj-51", 17 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-57", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-57", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 201.839966000000004, 672.0, 20.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Century Gothic",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p cleanup_parse"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.11988, 0.8, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.988936999999993, 40.0, 75.0, 19.0 ],
									"text" : "r pin_setting"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 1177.0, 272.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Helvetica",
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 141.0, 43.0, 18.0 ],
													"text" : "zl iter 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "clear" ],
													"patching_rect" : [ 50.0, 120.0, 43.0, 18.0 ],
													"text" : "t l clear"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 165.0, 83.0, 18.0 ],
													"text" : "prepend append"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-85",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 100.0, 53.0, 18.0 ],
													"text" : "route port"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-94",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 243.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-85", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"source" : [ "obj-92", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 0 ],
													"source" : [ "obj-94", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 760.0, 200.839966000000004, 49.0, 19.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Helvetica",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p ports"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.5, 85.839966000000004, 83.0, 19.0 ],
									"text" : "prepend port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 139.988936999999993, 85.839966000000004, 49.0, 19.0 ],
									"text" : "atoi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Century Gothic",
									"fontsize" : 11.0,
									"id" : "obj-182",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 50.0, 164.839966000000004, 82.0, 19.0 ],
									"text" : "serial a 57600"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Input to Serial Object",
									"id" : "obj-74",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Input Ports",
									"id" : "obj-75",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.5, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Output Ports",
									"id" : "obj-76",
									"index" : 19,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 236.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"midpoints" : [ 243.0, 134.839966000000004, 59.5, 134.839966000000004 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"midpoints" : [ 149.488936999999993, 157.589966000000004, 59.5, 157.589966000000004 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"midpoints" : [ 122.5, 192.339966000000004, 769.5, 192.339966000000004 ],
									"source" : [ "obj-182", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-72", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-72", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-72", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-72", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-72", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-72", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-72", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-72", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-72", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-72", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-72", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-72", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-72", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
									"destination" : [ "obj-73", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-72", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-72", 16 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-72", 17 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 30.5, 508.580016999999998, 617.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Century Gothic",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p serial"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.5, 383.5, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 446.0, 200.0, 120.0, 47.0 ],
					"text" : "Note: Never Select the Blue Tooth Options"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.5, 383.5, 158.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.0, 200.0, 144.0, 24.0 ],
					"text" : "2. Select usbmodem"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 339.0, 100.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 150.0, 100.0, 24.0 ],
					"text" : "1. Click Print"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.396194, 0.688001, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.5, 279.0, 48.0, 19.0 ],
					"text" : "s bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 540.5, 244.5, 65.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 93.5, 148.0, 28.0 ],
					"text" : "Kyle Duffield, March 2014\nmail@kyleduffield.com"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 60.5, 395.0, 28.0 ],
					"text" : "Kyle Duffield Modification of Rasmus Lunding ArduinoInOutForDummies\nThis works with the Arduino Uno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 56.411743000000001, 409.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"fontsize" : 11.0,
					"id" : "obj-172",
					"items" : [ "usbmodem14301", ",", "Bluetooth-Incoming-Port" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 38.5, 377.5, 190.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-174",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.486023000000046, 353.5, 525.369933999999944, 43.0 ],
					"text" : "To communicate serially between the Arduino soft and hardware, while the max-patch is open, close the port. To communicate between Max and the Arduino board, remember to open the serial port again."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.396194, 0.688001, 0.9 ],
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.5, 343.0, 47.0, 19.0 ],
					"text" : "r bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-176",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.5, 370.0, 37.0, 19.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-177",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.5, 370.0, 36.0, 19.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-178",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 617.5, 370.0, 40.0, 19.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-179",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.5, 339.0, 35.0, 19.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.5, 470.5, 51.0, 19.0 ],
					"text" : "metro 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 149.5, 271.0, 17.0 ],
					"text" : "<rasl@cs.au.dk> <lassesvestergaard@gmail.com>"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 129.5, 260.0, 17.0 ],
					"text" : "Rasmus Lunding, Lasse Vestergaard April 2012"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-190",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.911743000000001, 409.5, 209.0, 32.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 140.5, 448.5, 209.0, 32.0 ],
					"text" : " 3. Toggle poll on, when sensor-data is streamed to Max."
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"order" : 1,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"midpoints" : [ 133.5, 454.540038999999979, 638.0, 454.540038999999979 ],
					"source" : [ "obj-172", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 48.0, 455.540038999999979, 40.0, 455.540038999999979 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 550.0, 501.080016999999998, 40.0, 501.080016999999998 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 672.0, 501.080016999999998, 40.0, 501.080016999999998 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 627.0, 501.080016999999998, 40.0, 501.080016999999998 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 39.0, 432.290038999999979, 40.0, 432.290038999999979 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 40.0, 490.790038999999979, 40.0, 490.790038999999979 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 2,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-106", 0 ],
					"midpoints" : [ 272.555555555555543, 539.790038999999979, 309.176483000000019, 539.790038999999979 ],
					"source" : [ "obj-77", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 239.333333333333343, 539.790038999999979, 270.794128000000001, 539.790038999999979 ],
					"source" : [ "obj-77", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 206.111111111111114, 539.790038999999979, 232.411743000000001, 539.790038999999979 ],
					"source" : [ "obj-77", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 172.888888888888886, 539.790038999999979, 194.02941899999999, 539.790038999999979 ],
					"source" : [ "obj-77", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 106.444444444444443, 539.790038999999979, 117.264708999999996, 539.790038999999979 ],
					"source" : [ "obj-77", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 73.222222222222229, 539.790038999999979, 78.882355000000004, 539.790038999999979 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"midpoints" : [ 638.0, 538.580016999999998, 338.5, 538.580016999999998, 338.5, 373.5, 48.0, 373.5 ],
					"source" : [ "obj-77", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 139.666666666666686, 539.790038999999979, 155.647064, 539.790038999999979 ],
					"source" : [ "obj-77", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 40.0, 539.790038999999979, 40.5, 539.790038999999979 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 305.777777777777771, 539.790038999999979, 347.55883799999998, 539.790038999999979 ],
					"source" : [ "obj-77", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 438.666666666666686, 598.290038999999979, 699.0, 598.290038999999979 ],
					"source" : [ "obj-77", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 471.888888888888914, 585.790038999999979, 744.0, 585.790038999999979 ],
					"source" : [ "obj-77", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 538.333333333333258, 563.290038999999979, 834.0, 563.290038999999979 ],
					"source" : [ "obj-77", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 505.111111111111086, 574.790038999999979, 789.0, 574.790038999999979 ],
					"source" : [ "obj-77", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 604.777777777777828, 541.290038999999979, 923.0, 541.290038999999979 ],
					"source" : [ "obj-77", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.254615, 0.633724, 0.8, 1.0 ],
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 571.555555555555543, 552.290038999999979, 879.0, 552.290038999999979 ],
					"source" : [ "obj-77", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 405.444444444444457, 539.790038999999979, 462.705871999999999, 539.790038999999979 ],
					"source" : [ "obj-77", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 372.222222222222229, 539.790038999999979, 424.323516999999981, 539.790038999999979 ],
					"source" : [ "obj-77", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.467325, 0.0, 0.9 ],
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 339.0, 539.790038999999979, 385.94116200000002, 539.790038999999979 ],
					"source" : [ "obj-77", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "get-values-newShiftr.maxpat",
				"bootpath" : "~/Documents/GitHub/Foresta-Inclusive/MAX-Arduino-Foresta-Inclusive/From Shiftr",
				"patcherrelativepath" : "../From Shiftr",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}

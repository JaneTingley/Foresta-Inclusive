{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 37.0, 80.0, 1413.0, 941.0 ],
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
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.5, 263.5, 45.0, 19.0 ],
					"presentation_linecount" : 2,
					"text" : "[v 6 $1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 823.5, 220.0, 50.0, 20.0 ]
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
					"bubble" : 1,
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 875.0, 224.0, 166.0, 82.0 ],
					"text" : "If you want to set pin 13 (led) to output, and pin  12 to digital input by default, connect the [r bang] object to the message box left inlet"
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
					"fontname" : "Century Gothic",
					"fontsize" : 11.0,
					"id" : "obj-126",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 772.5, 263.5, 39.0, 19.0 ],
					"text" : "[p 6 2]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Century Gothic",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 188.0, 673.0, 18.0 ],
					"text" : "Make sure you have the \"arduinoMaxInOutforDummies_57600_baud.ino \" Arduino sketch uploaded to your board."
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
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1413.0, 915.0 ],
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
											"revision" : 6,
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
							"revision" : 6,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 169.0, 78.0, 1237.0, 638.0 ],
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
											"revision" : 6,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 243.0, 44.0, 1197.0, 677.0 ],
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
													"patching_rect" : [ 729.25, 204.0, 184.0, 19.0 ],
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
													"patching_rect" : [ 133.5, 100.0, 223.0, 68.0 ],
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
													"patching_rect" : [ 50.0, 204.0, 671.5, 19.0 ],
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
													"patching_rect" : [ 50.0, 150.0, 54.0, 19.0 ],
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
													"patching_rect" : [ 50.0, 130.0, 59.0, 19.0 ],
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
													"patching_rect" : [ 50.0, 170.0, 69.0, 19.0 ],
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
													"patching_rect" : [ 50.0, 100.0, 52.0, 19.0 ],
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
									"patching_rect" : [ 50.0, 201.839966000000004, 672.0, 23.0 ],
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
									"patching_rect" : [ 139.988936999999993, 40.0, 75.0, 22.0 ],
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
											"revision" : 6,
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
									"patching_rect" : [ 760.0, 200.839966000000004, 49.0, 22.0 ],
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
									"patching_rect" : [ 233.5, 85.839966000000004, 83.0, 22.0 ],
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
									"patching_rect" : [ 139.988936999999993, 85.839966000000004, 49.0, 22.0 ],
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
									"patching_rect" : [ 50.0, 164.839966000000004, 82.0, 22.0 ],
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
					"patching_rect" : [ 30.5, 442.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"fontsize" : 11.0,
					"id" : "obj-172",
					"items" : [ "Bluetooth-Incoming-Port", ",", "usbmodem14101" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 29.5, 383.5, 190.0, 19.0 ]
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
					"patching_rect" : [ 80.5, 433.5, 209.0, 32.0 ],
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
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"midpoints" : [ 124.5, 454.540038999999979, 638.0, 454.540038999999979 ],
					"source" : [ "obj-172", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 39.0, 455.540038999999979, 40.0, 455.540038999999979 ],
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
					"destination" : [ "obj-5", 0 ],
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
					"destination" : [ "obj-21", 0 ],
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
					"midpoints" : [ 638.0, 538.580016999999998, 338.5, 538.580016999999998, 338.5, 373.5, 39.0, 373.5 ],
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
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}

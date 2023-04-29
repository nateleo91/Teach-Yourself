local wx = require("wx")

-- create the application object
local app = wx.wxApp()

-- create a parent window
local frame = wx.wxFrame(wx.NULL, wx.wxID_ANY, "Game Launcher", wx.wxDefaultPosition, wx.wxSize(500, 300), wx.wxDEFAULT_FRAME_STYLE)

-- create the panel to hold the buttons
local panel = wx.wxPanel(frame, wx.wxID_ANY)

-- create the buttons
local button1 = wx.wxButton(panel, wx.wxID_ANY, "Game 1")
local button2 = wx.wxButton(panel, wx.wxID_ANY, "Game 2")
local button3 = wx.wxButton(panel, wx.wxID_ANY, "Game 3")

-- create a vertical box sizer to hold the buttons
local sizer = wx.wxBoxSizer(wx.wxVERTICAL)
sizer:Add(button1, 0, wx.wxALL, 5)
sizer:Add(button2, 0, wx.wxALL, 5)
sizer:Add(button3, 0, wx.wxALL, 5)

-- set the sizer for the panel
panel:SetSizer(sizer)

-- show the frame
frame:Show(true)

-- start the event loop
app:MainLoop()

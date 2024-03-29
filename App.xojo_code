#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function PaperTape() As Boolean Handles PaperTape.Action
			If PaperTapeWindow.Visible = True Then
			
			PaperTapeWindow.Visible = False
			
			Return False
			
			Else
			
			PaperTapeWindow.Show
			
			BasicWindow.FieldInput.SetFocus
			
			Return True
			
			End If
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ClearArrays()
		  
		  // Clear Values
		  For i As Integer = app.Values.Ubound  DownTo 0
		    
		    app.Values.Remove( i )
		    
		  Next
		  
		  // Clear Operators
		  For i As Integer = app.Operators.Ubound  DownTo 0
		    
		    app.Operators.Remove( i )
		    
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ClearCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentOperation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Memory As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Operators() As Auto
	#tag EndProperty

	#tag Property, Flags = &h0
		percent As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Result As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Values() As Auto
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ClearCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentValue"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Memory"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentOperation"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="percent"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

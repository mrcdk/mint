
[![Logo](../../images/logo.png)](../../api/index.html)

<hr/>
<a href="#" id="search_bar" onclick="return;"><div> search API <em>(or start typing anywhere)</em> </div></a>
<hr/>

<script src="../../js/omnibar.js"> </script>
<link rel="stylesheet" type="text/css" href="../../css/omnibar.css" media="all">

<div id="omnibar"> <a href="#" onclick="return" id="omnibar_close"></a> <input id="omnibar_text" type="text" placeholder="search types..."></input></div>
<script  id="typelist" data-relpath="../../" data-types="mint.Button,mint.ButtonOptions,mint.Canvas,mint.CanvasOptions,mint.Checkbox,mint.CheckboxOptions,mint.ChildBounds,mint.Control,mint.ControlOptions,mint.Dropdown,mint.DropdownOptions,mint.Image,mint.ImageOptions,mint.KeySignal,mint.Label,mint.LabelOptions,mint.List,mint.ListOptions,mint.MouseSignal,mint.Panel,mint.PanelOptions,mint.Progress,mint.ProgressOptions,mint.Scroll,mint.ScrollOptions,mint.Slider,mint.SliderOptions,mint.TextEdit,mint.TextEditOptions,mint.TextSignal,mint.Window,mint.WindowOptions,mint.core.Macros,mint.core.Signal,mint.core.unifill.CodePoint,mint.core.unifill.CodePointIter,mint.core.unifill.Exception,mint.core.unifill.InternalEncoding,mint.core.unifill.InternalEncodingBackwardIter,mint.core.unifill.InternalEncodingIter,mint.core.unifill.Unicode,mint.core.unifill.Unifill,mint.core.unifill.Utf,mint.core.unifill.Utf16,mint.core.unifill.Utf32,mint.core.unifill.Utf8,mint.core.unifill.UtfIter,mint.core.unifill.UtfTools,mint.core.unifill._CodePoint.CodePoint_Impl_,mint.core.unifill._InternalEncoding.UtfX,mint.core.unifill._Utf16.StringU16,mint.core.unifill._Utf16.StringU16Buffer,mint.core.unifill._Utf16.StringU16Buffer_Impl_,mint.core.unifill._Utf16.StringU16_Impl_,mint.core.unifill._Utf16.Utf16Impl,mint.core.unifill._Utf8.StringU8,mint.core.unifill._Utf8.StringU8_Impl_,mint.core.unifill._Utf8.Utf8Impl,mint.layout.margins.AnchorType,mint.layout.margins.Layouts,mint.layout.margins.MarginTarget,mint.layout.margins.MarginType,mint.layout.margins.Margins,mint.layout.margins.SizeTarget,mint.layout.margins._Margins.Anchor,mint.layout.margins._Margins.AnchorType_Impl_,mint.layout.margins._Margins.Margin,mint.layout.margins._Margins.MarginTarget_Impl_,mint.layout.margins._Margins.MarginType_Impl_,mint.layout.margins._Margins.SizeTarget_Impl_,mint.layout.margins._Margins.Sizer,mint.render.Render,mint.render.Renderer,mint.render.Rendering,mint.render.luxe.Button,mint.render.luxe.Canvas,mint.render.luxe.Checkbox,mint.render.luxe.Convert,mint.render.luxe.Dropdown,mint.render.luxe.Image,mint.render.luxe.Label,mint.render.luxe.List,mint.render.luxe.LuxeMintRender,mint.render.luxe.Panel,mint.render.luxe.Progress,mint.render.luxe.Scroll,mint.render.luxe.Slider,mint.render.luxe.TextEdit,mint.render.luxe.Window,mint.render.luxe._Button.LuxeMintButtonOptions,mint.render.luxe._Canvas.LuxeMintCanvasOptions,mint.render.luxe._Checkbox.LuxeMintCheckboxOptions,mint.render.luxe._Dropdown.LuxeMintDropdownOptions,mint.render.luxe._Image.LuxeMintImageOptions,mint.render.luxe._Label.LuxeMintLabelOptions,mint.render.luxe._List.LuxeMintListOptions,mint.render.luxe._Panel.LuxeMintPanelOptions,mint.render.luxe._Progress.LuxeMintProgressOptions,mint.render.luxe._Scroll.LuxeMintScrollOptions,mint.render.luxe._Slider.LuxeMintSliderOptions,mint.render.luxe._TextEdit.LuxeMintTextEditOptions,mint.render.luxe._Window.LuxeMintWindowOptions,mint.types.Helper,mint.types.InteractState,mint.types.KeyCode,mint.types.KeyEvent,mint.types.ModState,mint.types.MouseButton,mint.types.MouseEvent,mint.types.TextAlign,mint.types.TextEvent,mint.types.TextEventType,mint.types._Types.InteractState_Impl_,mint.types._Types.KeyCode_Impl_,mint.types._Types.MouseButton_Impl_,mint.types._Types.TextAlign_Impl_"></script>


<h1>Window</h1>
<small>`mint.Window`</small>



<hr/>

`class`extends <code><span>mint.Control</span></code><br/><span class="meta">
meta: @:directlyUsed, @:allow(mint.render.Renderer)</span>

<hr/>


&nbsp;
&nbsp;




<h3>Members</h3> <hr/><span class="member apipage">
                <a name="closable"><a class="lift" href="#closable">closable</a></a><div class="clear"></div>
                <code class="signature apipage">closable : [Bool](http://api.haxe.org/Bool.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="close_button"><a class="lift" href="#close_button">close\_button</a></a><div class="clear"></div>
                <code class="signature apipage">close\_button : [mint.Label](../../api/mint/Label.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="collapse_handle"><a class="lift" href="#collapse_handle">collapse\_handle</a></a><div class="clear"></div>
                <code class="signature apipage">collapse\_handle : [mint.Control](../../api/mint/Control.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="collapsible"><a class="lift" href="#collapsible">collapsible</a></a><div class="clear"></div>
                <code class="signature apipage">collapsible : [Bool](http://api.haxe.org/Bool.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="focusable"><a class="lift" href="#focusable">focusable</a></a><div class="clear"></div>
                <code class="signature apipage">focusable : [Bool](http://api.haxe.org/Bool.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="moveable"><a class="lift" href="#moveable">moveable</a></a><div class="clear"></div>
                <code class="signature apipage">moveable : [Bool](http://api.haxe.org/Bool.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="onclose"><a class="lift" href="#onclose">onclose</a></a><div class="clear"></div>
                <code class="signature apipage">onclose : [mint.core.Signal](../../api/mint/core/Signal.html)&lt;[](#)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="oncollapse"><a class="lift" href="#oncollapse">oncollapse</a></a><div class="clear"></div>
                <code class="signature apipage">oncollapse : [mint.core.Signal](../../api/mint/core/Signal.html)&lt;[](#)&gt;</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="resizable"><a class="lift" href="#resizable">resizable</a></a><div class="clear"></div>
                <code class="signature apipage">resizable : [Bool](http://api.haxe.org/Bool.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="resize_handle"><a class="lift" href="#resize_handle">resize\_handle</a></a><div class="clear"></div>
                <code class="signature apipage">resize\_handle : [mint.Control](../../api/mint/Control.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/><span class="member apipage">
                <a name="title"><a class="lift" href="#title">title</a></a><div class="clear"></div>
                <code class="signature apipage">title : [mint.Label](../../api/mint/Label.html)</code><br/></span>
            <span class="small_desc_flat"></span><br/>


<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="add"><a class="lift" href="#add">add</a></a><div class="clear"></div>
            <code class="signature apipage">add(child:[mint.Control](../../api/mint/Control.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="close"><a class="lift" href="#close">close</a></a><div class="clear"></div>
            <code class="signature apipage">close() : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="mousedown"><a class="lift" href="#mousedown">mousedown</a></a><div class="clear"></div>
            <code class="signature apipage">mousedown(e:[mint.types.MouseEvent](../../api/mint/types/MouseEvent.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="mousemove"><a class="lift" href="#mousemove">mousemove</a></a><div class="clear"></div>
            <code class="signature apipage">mousemove(e:[mint.types.MouseEvent](../../api/mint/types/MouseEvent.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="mouseup"><a class="lift" href="#mouseup">mouseup</a></a><div class="clear"></div>
            <code class="signature apipage">mouseup(e:[mint.types.MouseEvent](../../api/mint/types/MouseEvent.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="new"><a class="lift" href="#new">new</a></a><div class="clear"></div>
            <code class="signature apipage">new(\_options:[mint.WindowOptions](../../api/mint/WindowOptions.html)<span></span>) : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>
<span class="method apipage">
            <a name="open"><a class="lift" href="#open">open</a></a><div class="clear"></div>
            <code class="signature apipage">open() : [Void](http://api.haxe.org/Void.html)</code><br/><span class="small_desc_flat"></span>


</span>



<hr/>

&nbsp;
&nbsp;
&nbsp;
&nbsp;
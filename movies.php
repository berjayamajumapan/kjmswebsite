<canvas>
<window name="vid" x="405" y="190" width="345" height="315"  title="Video" visible="true" closeable="true">
     <view id="videoplayer" play="true" resource="http:Parade.swf"> 
        <view y="241">
            <simplelayout axis="x" spacing="-1"/>
            <button width="40" onclick="videoplayer.play(1);">
               <view resource="icons/rewind_all.png" y="6" align="center"/>
            </button>
            <button width="40" onclick="videoplayer.seek( -2 );">
                <view resource="icons/rewind.png" y="6" align="center"/>
            </button>        
            <button width="40" onclick="videoplayer.stop()">
                <view resource="icons/stop.png" y="6" align="center"/>
            </button>
            <button width="40" onclick="videoplayer.play()">
                <view resource="icons/play.png" y="5" align="center"/>
            </button>
            <button width="40" onclick="videoplayer.seek( 2 );">
                <view resource="icons/fastfwd.png" y="6" align="center"/>
            </button>
        </view>
        <simplelayout axis="x" spacing="10"/>
        <method name="lastoff">
            Debug.write("Got last");
        </method>
        <method name="stopped">
            Debug.write("Got stopped");
        </method>		
	 </view>  
   </window>
</canvas>
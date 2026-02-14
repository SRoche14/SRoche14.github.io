## Fixing your leaky end cap, or how to make a robot pressurizer

Summary: This blog post is primarily for those who have little hardware experience who have found themselves in a robotics lab. Particularly, if you are a software person working with underwater vehicles for the first time, this is for you. After reading this you will understand how to find a leak on a blue robotics based robot, how to fix a leaky end cap penetrator, and learn about one of WARPLab's vehicles at WHOI. This was last updated February of 2026. I am not associated with Blue Robotics nor do I make any profit from recommending particular parts.

<h2>The Leak</h2>
After a long day of testing in MITRE's Blue Tech research facility, I was feeling happy with my data collection. With their amazing motion capture system, I aquired a nice collection of interesting trajectories. However, my blood pressure spiked when I suddenly saw a leak detected on my laptop's GUI. Quickly pulling the robot out of the water and inspecting the housing, everything was thankfully okay. Minimal water entered and none of the electronics were damaged. Feeling somewhat relieved, I still worried; I have never found a leak before let alone fixed one. If you happen to be in a similar situation, this guide aims to be of aid. For those with more experience, please feel free to share your advice or tricks with me.

<div style="display: flex; gap: 12px; flex-wrap: wrap; align-items: flex-start;">
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <img src="{{ '/images/robotPressurizer/mitrePool.JPG' | relative_url }}" alt="Testing in MITRE's Pool" style="width: 100%; height: auto;">
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Testing in MITRE's pool during data collection.</figcaption>
  </figure>
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <img src="{{ '/images/robotPressurizer/mitreCUREE.JPG' | relative_url }}" alt="CUREE at MITRE with MoCap reflectors" style="width: 100%; height: auto;">
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">CUREE at MITRE's pool with motion-capture reflectors attached.</figcaption>
  </figure>
</div>

<h2>Identifying the Leak</h2>
With CUREE back at the lab, I did a housing pressure test in order to obtain a sense of the leak severity. It was a <b>slow</b> leak - fast enough to prevent any sustained testing, but slow enough that readily finding it was challenging. In this situation, you should first look at the end cap o-rings. Are they damaged? Are there hairs or other objects opening airways? You can take them off using a pick, and you can regrease them with <a href="https://bluerobotics.com/store/watertight-enclosures/enclosure-tools-supplies/molykote/"> MolyKote 111 </a>.

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/endCap.JPEG' | relative_url }}" alt="Blue Robotics End Cap" style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Blue Robotics <a href="{{ 'https://bluerobotics.com/store/watertight-enclosures/locking-series/wte-end-cap-vp/' | relative_url }}">End Cap</a>.</figcaption>
</figure>

In my case, replacing o-rings and cleaning them did not fix the issue. This narrowed the investigation down to the endcap penetrators or even the lights on the vehicle (they are all connected to the main housing, so the pressure sensor could be detecting a leak from any of them). With so many potential failure points, a colleague recommended pressurizing the vehicle. By increasing the pressure inside the vehicle, I could identify the leak by (a) listening for the leak, and (b) spraying potential failure points with soapy water. 

<h3>Making your own robot pressurizer</h3>
The main idea is easy: get any standard donut air pump, connect a hose to the air pump and the housing of your vehicle, and then spray your vehicle with soapy water. To make this all happen, you will want a quarter inch hose (for Blue Robotics penetrators), a vacuum plug, a schrader to 1/4" barb hose connector, teflon tape, and a bike pump or electric air pump. In my case I had an electric air pump, so I needed to create the schrader to 1/4" barb hose connector. You should order whatever brand or parts you find most suitable to your project. In my case, I ordered Sungator's <a href="https://www.amazon.com/dp/B0CLY2F8VM?ref=ppx_yo2ov_dt_b_fed_asin_title">'1/4" NPT Brass Hose Barb Fittings to 1/4" Barbed Hose Air Fittings'</a>, Godeson's <a href="https://www.amazon.com/dp/B0CPPBSFV5?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1">'Schrader Valve with 1/4" Male NPT'</a>, and Sanpaint's <a href="https://www.amazon.com/dp/B082V8FJQJ?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1">'1/4" x 1/4" NPT Coupler, Brass Female Pipe Fitting' (FNPT)</a>. The Godeson part came with a small roll of teflon tape. Our lab already had a 1/4" hose and a <a href="https://bluerobotics.com/store/watertight-enclosures/enclosure-tools-supplies/vacuum-plug/"> vacuum plug </a>, so I was good to go.

Tape on the thread of each of the schrader to NPT part and the NPT to barb hose part. When doing this, ensure you use teflon. You can leave the thread closest to the edge of the part uncovered by tape, as covering it makes it easier for the tape to slip over the airway. Do 4 full rotations of tape around the threads. Then, put the schrader to NPT part into one side of the FNPT part, and put the NPT to barb hose into the other side of the FNPT part. You have the first part.

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/schraderToBarb.JPG' | relative_url }}" alt="Schrader Valve to Barb Hose" style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">1/4" Scharader Valve to 1/4" Barb Hose.</figcaption>
</figure>

Now the next part is fairly simple: just put the vacuum tube on the vacuum plug, put the other end of the tube on the barb hose, and you can connect the air pump to the schrader valve. If you did everything correctly, you should be able to pump air through the hose without issue. If needed, you could also use a hose clamp to help secure the hose to the barb hose end. 

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/barbHose.JPG' | relative_url }}" alt="Connecting the air pump to the vacuum tube." style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Air pump connected to vacuum tube.</figcaption>
</figure>

Now get yourself some soapy water and a spray bottle. Seal up your vehicle, put your end caps in, and pull up a pressure monitor. You may also want rachet straps to hold the end caps in; without them your end caps may pop off when put under pressure. I am not covering the pressure sensor in too much detail as most readers should have access to one already; they typically are included with your underwater robot setup. If you do not have a pressure sensor, here are a few options. 1) If you buy an Arduino board and a pressure sensor, you can place the board inside your housing, connect to to WiFi, and see the pressure. 2) Another option is wiring your pressure sensor of choice through the end cap. Later on in this blog I will show how you can do this wiring and make the seal watertight. 

After spraying your penetrators and any other suspicious parts, you can find the leak by looking for bubbles. Here is a short video showing my leaky penetrator:


<div style="display: flex; gap: 12px; flex-wrap: wrap; align-items: flex-start;">
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <img src="{{ '/images/robotPressurizer/sprayForLeaks.JPG' | relative_url }}" alt="Spraying soapy water on penetrators to find leaks." style="width: 100%; height: auto;">
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">My labmate spraying soapy water over penetrators while the housing is pressurized.</figcaption>
  </figure>
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <video controls style="width: 100%; height: auto;">
      <source src="{{ '/images/robotPressurizer/sprayforleak.MOV' | relative_url }}" type="video/quicktime">
      Your browser does not support the video tag.
    </video>
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Bubbles show the exact location of the leak.</figcaption>
  </figure>
</div>

With the leaky penetrator identified, we had to take apart the vehicle to get at either side of the end cap. The goal is to loosen the nut holding the penetrator in place and then pull out the penetrator. This can take some time depending on the complexity of your vehicle. Once you pull out the penetrator, the old epoxy will still be holding the wiring in place. To remove this epoxy, use heat to degrade the epoxy and some sort of sharp tool (a screwdriver, pick) to dig out the epoxy. In my case I used a heat gun. I would apply heat for about 5-7 minutes to the bottom of the o-ring (see image) and then use my sharp tool to probe the epoxy. After repeating this process multiple times, the epoxy became soft. At this point you can start digging it all out. You may have to reheat multiple times to get all the epoxy out. Once you get it all out, you can slide the wiring out of the penetrator, and you are now ready to fix it.

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/removeEpoxy.JPG' | relative_url }}" alt="Using a heat gun to degrade the faulty epoxy." style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Using a heat gun to degrade the faulty epoxy.</figcaption>
</figure>

I decided to reuse the old penetrator because the part looked fine. However, note that in this blog I am using an older version of the Blue Robotics penetrators. They now offer the <a href="https://bluerobotics.com/store/cables-connectors/penetrators/wlp-vp/">WetLink Penetrators</a>. These newer ones provide higher reliability and better performance at depth, and they are easier to install. If you are working with those, Blue Robotics has a <a href="https://www.youtube.com/watch?v=vigY82tsfOI">great video</a> on how to install them. Likewise, for the older penetrators I am using, Blue Robotics has 2 (<a href="https://www.youtube.com/watch?v=mKaJLWv1SCw">video 1</a>, <a href="https://www.youtube.com/watch?v=9KHltdk5Ts0">video 2</a>) videos that I found helpful. I did notice discrepancies between both videos, so I am representing them here to stich them together. Watch both of them for further details. The most essential items to have are: epoxy, <a href="https://bluerobotics.com/store/other/the-abyss/potting-acetone-wipes-qty10-r1-rp/">acetone prep wipes</a>, syringes, a makeshift jig, paper towels, and cotton tipped swabs. Most of these items can be obtained by buying <a href="https://bluerobotics.com/store/cables-connectors/tools/tool-potting-kit-r1/">Blue Robotics's Potting Kit</a> and their <a href="https://bluerobotics.com/store/cables-connectors/tools/loctite-marine-epoxy/">Loctite Epoxy</a>. 


<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/removePenetrator.JPG' | relative_url }}" alt="Cable after removing the penetrator." style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Cable after removing the penetrator.</figcaption>
</figure>

If needed, first cut the wire insulation in order to get access to the wires. Then, use acetone wipes to clean the remaining insulation, which will help the epoxy bind. If you have an epoxy applicator, you should fill it with epoxy, and push a little bit out onto a paper towel. This helps eliminate any excess air that is within the epoxy package before filing up the syringes. Personally, I did not have an applicator, so I simply filled the syringes directly. Ideally you should fill the syringes horizontally in order to prevent air bubbles from forming. Then, slide the penetrator up the wire to the start of the insulation. You can use super glue at the end of the insulation to help keep the penetrator in place. Also use your makeshift jig to hold the penetrator while you ready the epoxy. At last, you fill up the top of the penetrator with epoxy. You can wait 3 hours before getting the other side of the penetrator, or you can use a heat gun to help it cure faster. For a full cure, you should wait 24 hours. 

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/loctiteEpoxy.JPG' | relative_url }}" alt="Letting the epoxy cure." style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Letting the epoxy cure.</figcaption>
</figure>

After waiting for your epoxy to cure, you should reinstall everything. Put the penetrator's o-ring on, slide the wiring back through the end cap, and use the penetrator's nut to hold it in place. Further instructions can be found on the <a href="https://bluerobotics.com/learn/wetlink-penetrator-installation-guide/">WetLink Penetrator Assembly page</a>. 

Now, some of you may have needed to cut some wiring in order to pull the penetrator out. In my case, I had to cut off a XT60 connector. 

<figure style="margin: 16px 0; text-align: center;">
  <img src="{{ '/images/robotPressurizer/xt60ThroughEndCap.JPG' | relative_url }}" alt="Example of XT60 connector used on an end cap." style="display: block; margin: 0 auto; width: 100%; max-width: 450px; height: auto;">
  <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Example of XT60 connector used on an end cap.</figcaption>
</figure>

Fortunately, fixing this is not too bad. All you need is a new XT60 connector, a soldering station, and ideally a WAGO inline connector. Why use the WAGO inline connector? The main issue here is you cannot slide the wiring through the end cap when the new XT60 connector is soldered on. After you slide the wiring through, soldering on the XT60 connector can be stressful; you don't want to get any tin on your robot. Forutnately, using the WAGO inline connector, you can separately solder the XT60 connector to some wiring. Then you can easily attach it to your penetrator wiring. 

<div style="display: flex; gap: 12px; flex-wrap: wrap; align-items: flex-start;">
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <img src="{{ '/images/robotPressurizer/solderXT60.JPG' | relative_url }}" alt="XT60 connector soldered onto new wire." style="width: 100%; height: auto;">
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">XT60 connector soldered onto new wire.</figcaption>
  </figure>
  <figure style="width: 49%; min-width: 280px; margin: 0;">
    <img src="{{ '/images/robotPressurizer/wagoInline.jpg' | relative_url }}" alt="Example of using WAGO Inline connectors on your end cap wires." style="width: 100%; height: auto;">
    <figcaption style="font-size: 0.9em; margin-top: 6px; text-align: center;">Example of using WAGO Inline connectors on your end cap wires.</figcaption>
  </figure>
</div>

Now, you should be done. After putting back together your robot you are now ready to test the housing pressure again. Pull a vacuum, monitor the pressure, and repeat any steps as needed.


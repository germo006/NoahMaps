# NoahMaps
This is a collection of custom color palettes, formatted for MATLAB. What exists now is just `AlbumMaps.mat`, which is a collection of color maps based on album covers I like. The colors are as follows. Each has five colors. 

## Using the palettes
What you do with the file organization is not up to me, but I have the folder containing `AlbumMaps.mat` on my system's environment variables. Load all of them or one of them...

```
load('/path/to/file/AlbumMaps.mat')
load('/path/to/file/AlbumMaps.mat', 'map of your choice')
```

Then, you can just index the map as a cell array of triplets any time you want to use the color. For example...

```
h = plot([randn(5,10)'], 'LineWidth', 3);
h(1).Color = DGD{1};
h(2).Color = DGD{2};
h(3).Color = DGD{3};
h(4).Color = DGD{4};
h(5).Color = DGD{5};
```

This gets you something like this:

<img src="Misc/DGDtest1.jpg" width="300">

That's pretty much it. 

## Where did the palettes come from?

### Battles - *Juice B Crypts*

**Variable Name `battles`**

<img src="Covers/battles.png" width="300">

### A Lot Like Birds - *Conversation Piece*

**Variable Name `CP1`**

<img src="Covers/CP1.jpg" width="300">

### A Lot Like Birds - *Conversation Piece (Deluxe Edition)*

**Variable Name `CP2`**

<img src="Covers/C2.jpg" width="300">

### ERRA - *Drift*

**Variable Name `drift`**

<img src="Covers/drift.jpg" width="300">

### The Cactus Channel - *Do It For Nothing*

**Variable Name `cactus`**

<img src="Covers/cactus.jpg" width="300">

### Dance Gavin Dance - *Afterburner*

**Variable Name `DGD`**

<img src="Covers/DGD.jpg" width="300">

### Hot Hot Heat - *Future Breeds*

**Variable Name `hothotheat`**

<img src="Covers/hothotheat.jpg" width="300">

### Psychedelic Porn Crumpets - *And Now For The Whatchamacallit*

**Variable Name `PPC`**

<img src="Covers/PPC.jpg" width="300">

### Resilia - *Royal Flush*

**Variable Name `resilia`**

<img src="Covers/resilia.jpg" width="300">

### Royal Tusk - *Mountain*

**Variable Name `royaltusk`**

<img src="Covers/royaltusk.jpg" width="300">

### Scary Pockets - *Virtual Insanity*

**Variable Name `scarypockets`**

<img src="Covers/scarypockets.jpg" width="300">

### The Happy Children - *Self Help Book*

**Variable Name `selfhelp`**

<img src="Covers/selfhelp.jpg" width="300">

### Emery - *In Shallow Seas We Sail*

**Variable Name `shallowseas`**

<img src="Covers/shallowseas.jpg" width="300">

### Stolas - *Stolas*

**Variable Name `stolas`**

<img src="Covers/stolas.jpg" width="300">

### DOMi and JD Beck - *NOT TiGHT*

**Variable Name `TiGHT`**

<img src="Covers/DOMiandJDBeck.jpg" width="300">

### Tatsuki Fujimoto - *CHAINSAW MAN vol. 1*
(Okay, so not an album cover. Still cool.)

**Variable Name `chainsaw`**

<img src="Covers/chainsaw.jpg" width="300">

### Duckwrth - *SG8*

**Variable Name `sg8`**

<img src="Covers/SG8.jpg" width="300">

## A note for the Power Palette people out there:

You'll note that there is also a function file called `Palettizer.m` packaged with the other files. This is a short function I wrote to help you do this same thing! To use it...

1. Download an image you'd like to get colors from.
2. Go to [this site](https://color.adobe.com/create/image) and upload the image. Play around with the color picker a bit until a set tickles your fancy, and mouse over to the "Color Wheel" tab. If you scroll down you should see a display that shows the R, G, B, and luminance values of the five colors. 
3. Make those into a matrix in MATLAB like so:
```
test = [R1 R2 R3 R4 R5; G1 G2 G3 G4 G5; B1 B2 B3 B4 B5]
```
4. Run Palettizer.
```
yourPalette = Palettizer(test)
```
5. You should see a plot that demonstrates the colors you put in, and the `yourPalette` variable can be used as in the instructions earlier.
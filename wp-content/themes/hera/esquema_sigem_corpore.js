(function (lib, img, cjs, ss, an) {

var p; // shortcut to reference prototypes
lib.webFontTxtInst = {}; 
var loadedTypekitCount = 0;
var loadedGoogleCount = 0;
var gFontsUpdateCacheList = [];
var tFontsUpdateCacheList = [];
lib.ssMetadata = [];



lib.updateListCache = function (cacheList) {		
	for(var i = 0; i < cacheList.length; i++) {		
		if(cacheList[i].cacheCanvas)		
			cacheList[i].updateCache();		
	}		
};		

lib.addElementsToCache = function (textInst, cacheList) {		
	var cur = textInst;		
	while(cur != exportRoot) {		
		if(cacheList.indexOf(cur) != -1)		
			break;		
		cur = cur.parent;		
	}		
	if(cur != exportRoot) {		
		var cur2 = textInst;		
		var index = cacheList.indexOf(cur);		
		while(cur2 != cur) {		
			cacheList.splice(index, 0, cur2);		
			cur2 = cur2.parent;		
			index++;		
		}		
	}		
	else {		
		cur = textInst;		
		while(cur != exportRoot) {		
			cacheList.push(cur);		
			cur = cur.parent;		
		}		
	}		
};		

lib.gfontAvailable = function(family, totalGoogleCount) {		
	lib.properties.webfonts[family] = true;		
	var txtInst = lib.webFontTxtInst && lib.webFontTxtInst[family] || [];		
	for(var f = 0; f < txtInst.length; ++f)		
		lib.addElementsToCache(txtInst[f], gFontsUpdateCacheList);		

	loadedGoogleCount++;		
	if(loadedGoogleCount == totalGoogleCount) {		
		lib.updateListCache(gFontsUpdateCacheList);		
	}		
};		

lib.tfontAvailable = function(family, totalTypekitCount) {		
	lib.properties.webfonts[family] = true;		
	var txtInst = lib.webFontTxtInst && lib.webFontTxtInst[family] || [];		
	for(var f = 0; f < txtInst.length; ++f)		
		lib.addElementsToCache(txtInst[f], tFontsUpdateCacheList);		

	loadedTypekitCount++;		
	if(loadedTypekitCount == totalTypekitCount) {		
		lib.updateListCache(tFontsUpdateCacheList);		
	}		
};
// symbols:
// helper functions:

function mc_symbol_clone() {
	var clone = this._cloneProps(new this.constructor(this.mode, this.startPosition, this.loop));
	clone.gotoAndStop(this.currentFrame);
	clone.paused = this.paused;
	clone.framerate = this.framerate;
	return clone;
}

function getMCSymbolPrototype(symbol, nominalBounds, frameBounds) {
	var prototype = cjs.extend(symbol, cjs.MovieClip);
	prototype.clone = mc_symbol_clone;
	prototype.nominalBounds = nominalBounds;
	prototype.frameBounds = frameBounds;
	return prototype;
	}


(lib.trabalhadorsvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AgQAfIAAg8IADAAQASAIAFATIAGAUIABAEQgBAEgCACQgCADgEAAg");
	this.shape.setTransform(19.3,17.8);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("AgyAjIAAhCIAQgCIAAAAQAIAMAOAEQAIADAFAAQAZAAALgTIAAAAIAOACIgBAAIAABCg");
	this.shape_1.setTransform(10.4,17.3);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#FFFFFF").s().p("AgHAeQgDAAgDgDQgDgCAAgEIAAgDQACgOADgGQAHgUAQgGIAEgBIABA7g");
	this.shape_2.setTransform(1.7,17.8);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("AgZAWQgHgJgFgOQgHgPgBgMIAAgEIAtABQAWgBAYgCIAAAFQgBAYgSAbQgIANgTAAQgRAAgIgNg");
	this.shape_3.setTransform(10.3,11.2);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFFF").s().p("Ag8AfIAAgQIAKAAQAFgaAXgKIgCAZQAAADAEAAQAEAAAAgDIADgjQANgEANAEIADAiQAAADAEAAQAEAAAAgDIgCgZQAXANAFAYIALAAIAAAQQgcADghAAQgZAAgjgDg");
	this.shape_4.setTransform(10.5,3.4);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,21,20.9);


(lib.relogiosvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AhABBQgbgcAAglQAAglAbgbQAbgbAlAAQAlAAAcAbQAbAbAAAlQAAAmgbAbQgcAbglAAQglAAgbgbgAgDhGIAAA8QgIABAAAJQAAAFAEADQADAEAEAAQAJAAACgJIAtAAQAEAAAAgDQAAgDgEAAIgtAAQgCgFgGgCIAAg8QAAgBAAgBQAAAAgBgBQAAAAgBgBQgBAAAAAAQAAAAgBAAQgBABAAAAQgBABAAAAQAAABAAABg");
	this.shape.setTransform(9.2,9.2);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,18.4,18.5);


(lib.registro = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AhgBqQgDAAgDgDQgDgCAAgEIAAhPQAAgSANgNQANgMASAAIAcAAQANgSAVAAQAWAAANASIAJAAQADAAADgDQADgDAAgDIAAg+QAAgDACgDQADgDAEAAIAjAAQAKAAgDAJIAABPQAAARgMANQgNANgSAAIgbAAQgNASgWAAQgVAAgMgSIgJAAQgEAAgDADQgDADAAADIAAA+QAAAEgCACQgDADgEAAgAgXgYQgLALAAANQAAAOALAKQAKALANAAQAPAAAKgLQAKgKAAgOQAAgNgKgLQgKgKgPAAQgNAAgKAKg");
	this.shape.setTransform(10.6,10.6);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("AgIAEIABgEIgBgDIALgMQAGAGAAAJQAAAJgGAHg");
	this.shape_1.setTransform(12.3,10.5);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#FFFFFF").s().p("AgIAAQAAgKAFgFIALAMIgBADQAAAAAAABQAAABAAAAQABABAAAAQABABAAAAIgLAMQgGgGAAgKg");
	this.shape_2.setTransform(9.2,10.6);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("AgPgCQAGgGAJAAQAKAAAGAGIgMAKIgEgBQAAAAAAAAQgBABgBAAQAAAAAAAAQgBABAAAAg");
	this.shape_3.setTransform(10.6,9.1);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFFF").s().p("AgPADIAMgLIADABIAEAAIAMAKQgGAGgKAAQgJAAgGgGg");
	this.shape_4.setTransform(10.7,12.2);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,21.2,21.2);


(lib.pranchetasvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("Ag+BdQgEgBAAgEIAAifQAAgDAEAAIAcAAIAAgGQAAgDAEAAIANAAIAAgFQAAgEAEAAIAbAAQAEAAAAAEIAAAFIANAAQAEAAAAADIAAAGIAcAAQAEAAAAADIAACfQAAAEgEABgAguBAQgEADACADIAFAJIACABQAEACACgDIALgTIABgCQAAgFgFAAQgCAAgCAEIgHAMIgBgCQgBgBAAgBQAAAAgBgBQAAAAgBAAQAAAAgBAAIgCAAgAgRBDQAAADAEAAIA4AAQAEAAAAgDQAAgFgEAAIg4AAQgEAAAAAFgAgsAeQAAAAAAABQAAAAAAAAQAAAAAAABQAAAAAAABQAAADAEAAIBTAAQAEAAAAgDQAAgEgEgBIhUAAIgDACgAgsgCQAAAAAAABQAAAAAAAAQAAAAAAABQAAAAAAAAQAAAEAEAAIBTAAQAEAAAAgEQAAgDgEAAIhUAAIgDABgAgsgjQAAAAAAABQAAAAAAAAQAAAAAAABQAAAAAAABQAAADAEAAIBTAAQAEAAAAgDQAAgFgEAAIhUAAIgDACgAgahAIA0AAIAAgLIgMAAQgEAAAAgFIAAgDIgUAAIAAADQAAAFgEAAIgMAAg");
	this.shape.setTransform(6.7,9.3);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,13.4,18.5);


(lib.laptopsvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("ABiBEIjDAAQgOAAACgMIBbAAQAAABAAAAQAAABAAAAQABAAAAABQAAAAABAAQAAABAAAAQAAAAABABQAAAAABAAQAAAAABAAIAaAAIAEgCIABgDIBdAAQABAMgMAAIgCAAgAhaA0IAAhwIACgFQAAgBABAAQAAgBABAAQAAAAABAAQAAAAAAAAICoAAQAEAAABACQADABAAAEIAABwgAhQAtIChAAIAAhkIihAAgAgGg9QAAAAAAAAQAAAAAAAAQABABAAAAQAAAAABAAIAPAAIABgBIgBgBIgPAAQgBAAAAAAQAAAAgBAAQAAAAAAAAQAAAAAAABgAgMg9IABABIACAAIABgBIgBgBIgCAAIgBABg");
	this.shape.setTransform(11.1,6.8);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0.1,0,22.1,13.7);


(lib.estatisticasvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AhHBkQgEAAgCgDIgCgFIAAi4QABgDACgCIAGgCICPAAQADAAABACIADAFIAAC4QAAADgDACQgDADgCAAgAAjgFIAABNQAAAAAAABQAAAAAAAAQABABAAAAQAAAAABAAIAQAAQABAAAAAAQABAAAAgBQAAAAAAAAQAAgBABAAIAAhNQgBAAAAAAQAAgBAAAAQAAAAgBAAQAAAAgBAAIgQAAQAAAAgBAAQAAAAAAAAQgBAAAAABQAAAAAAAAgAAFALIAAA9QAAAAABABQAAAAAAAAQAAABAAAAQABAAAAAAIAQAAQABAAAAAAQABAAAAgBQAAAAAAAAQABgBAAAAIAAg9QAAgBgBAAQAAAAAAgBQAAAAgBAAQAAAAgBAAIgQAAgAgXAhIAAAnQAAAAABABQAAAAAAAAQAAABABAAQAAAAAAAAIAQAAQABAAAAAAQABAAAAgBQAAAAAAAAQAAgBAAAAIAAgnQAAAAAAAAQAAgBAAAAQAAAAgBAAQAAgBgBAAIgQAAQAAAAAAABQgBAAAAAAQAAAAAAABQgBAAAAAAgAg0AvIAAAZQAAAAAAABQAAAAAAAAQAAABABAAQAAAAAAAAIARAAQAAAAAAAAQABAAAAgBQAAAAAAAAQAAgBAAAAIAAgZQAAgBAAAAQAAgBAAAAQAAAAgBAAQAAAAAAAAIgRAAgAgsgrQAAAEADAAIBUAAQAEAAAAgEQAAgEgEAAIhUAAQgFAAACAEgAgsg6QAAAEADAAIBUAAQAEAAAAgEQAAgEgEAAIhUAAQgFAAACAEgAgshJQAAAEADAAIBUAAQAEAAAAgEQAAgEgEAAIhUAAQgFAAACAEg");
	this.shape.setTransform(8,10);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,15.9,20);


(lib.engrenagemsvg = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AgOBbQgEAAgGgCIAAgTQgMgFgGgEIgQAKIgOgOIALgPQgGgIgDgKIgTgCQgDgJAAgLIASgFIABgKIADgKIgQgMQAFgJAFgJIASAGIAPgOIgFgSIASgJIAKARQAJgDALAAIAFgSIAKABQAEAAAGACIAAATQAMAFAGAGIAQgMIAOAPIgLAQQAGAHADALIATAAQADANAAAHIgSAGIgBAKIgBAIIAPALIgKASIgSgGQgHAJgIAGIAFASQgHAFgLAEIgLgQQgJADgLABIgFASgAgWggQgOAJgCAQQgDAQAJAOQAJAOARACQAPADAOgJQAOgJADgRQADgPgJgOQgKgOgQgCIgIgBQgLAAgLAHg");
	this.shape.setTransform(9.3,9.3);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,18.6,18.5);


(lib.trabalhador = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.trabalhadorsvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(26.1,25.9,2.461,2.461,0,0,0,10.6,10.5);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.trabalhador, new cjs.Rectangle(0,0,51.6,51.3), null);


(lib.relogio = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.relogiosvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(19.7,19.7,2.142,2.142,0,0,0,9.2,9.2);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.relogio, new cjs.Rectangle(0,0,39.4,39.5), null);


(lib.prancheta = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.pranchetasvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(16.9,23.9,2.518,2.518,0,0,0,6.7,9.5);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.prancheta, new cjs.Rectangle(0,0,33.6,46.6), null);


(lib.laptop = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.laptopsvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(92.6,55.8,8.087,8.087,0,0,0,11.5,6.9);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.laptop, new cjs.Rectangle(-0.1,0,179,110.5), null);


(lib.estatistica = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.estatisticasvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(16.5,20.6,2.035,2.035,0,0,0,8.1,10.1);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.estatistica, new cjs.Rectangle(0,0,32.4,40.7), null);


(lib.engrenagem = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer 1
	this.instance = new lib.engrenagemsvg("synched",0);
	this.instance.parent = this;
	this.instance.setTransform(21.1,20.9,2.24,2.24,0,0,0,9.4,9.3);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.engrenagem, new cjs.Rectangle(0,0,41.7,41.5), null);


// stage content:
(lib.esquema_sigem_corpore = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_353 = function() {
		this.gotoAndPlay(8);
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).wait(353).call(this.frame_353).wait(1));

	// prancheta
	this.instance = new lib.prancheta();
	this.instance.parent = this;
	this.instance.setTransform(152.7,236.3,0.167,0.167,0,0,0,16.8,23.4);
	this.instance.alpha = 0;
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(37).to({_off:false},0).to({regY:23.3,scaleX:1,scaleY:1,x:25.2,alpha:1},6,cjs.Ease.get(1)).wait(269).to({regY:23.4,scaleX:0.17,scaleY:0.17,x:152.7,alpha:0},6).to({_off:true},1).wait(35));

	// L-prancheta
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#FFFFFF").ss(2,1,1).p("AAjAAIhFAA");
	this.shape.setTransform(167.5,237.6);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjNAAIGbAA");
	this.shape_1.setTransform(150.4,237.6);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f().s("#FFFFFF").ss(2,1,1).p("AlZAAIKzAA");
	this.shape_2.setTransform(136.4,237.6);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f().s("#FFFFFF").ss(2,1,1).p("AnGAAIONAA");
	this.shape_3.setTransform(125.5,237.6);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f().s("#FFFFFF").ss(2,1,1).p("AoUAAIQpAA");
	this.shape_4.setTransform(117.8,237.6);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f().s("#FFFFFF").ss(2,1,1).p("ApCAAISFAA");
	this.shape_5.setTransform(113.1,237.6);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.f().s("#FFFFFF").ss(2,1,1).p("AJTAAIylAA");
	this.shape_6.setTransform(111.5,237.6);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.f().s("#FFFFFF").ss(2,1,1).p("An0AAIPqAA");
	this.shape_7.setTransform(120.9,237.6);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.f().s("#FFFFFF").ss(2,1,1).p("AmXAAIMvAA");
	this.shape_8.setTransform(130.2,237.6);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ak6AAIJ1AA");
	this.shape_9.setTransform(139.5,237.6);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjcAAIG6AA");
	this.shape_10.setTransform(148.9,237.6);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ah/AAID/AA");
	this.shape_11.setTransform(158.2,237.6);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape}]},37).to({state:[{t:this.shape_1}]},1).to({state:[{t:this.shape_2}]},1).to({state:[{t:this.shape_3}]},1).to({state:[{t:this.shape_4}]},1).to({state:[{t:this.shape_5}]},1).to({state:[{t:this.shape_6}]},1).to({state:[{t:this.shape_6}]},269).to({state:[{t:this.shape_7}]},1).to({state:[{t:this.shape_8}]},1).to({state:[{t:this.shape_9}]},1).to({state:[{t:this.shape_10}]},1).to({state:[{t:this.shape_11}]},1).to({state:[{t:this.shape}]},1).to({state:[]},1).wait(35));

	// engrenagem
	this.instance_1 = new lib.engrenagem();
	this.instance_1.parent = this;
	this.instance_1.setTransform(209.7,313.4,0.257,0.257,0,0,0,20.9,20.7);
	this.instance_1._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(30).to({_off:false},0).to({regX:20.8,scaleX:1,scaleY:1,x:167.4,y:384.4},7,cjs.Ease.get(1)).wait(268).to({regX:20.9,scaleX:0.26,scaleY:0.26,x:209.7,y:313.4},7).to({_off:true},1).wait(41));

	// L-engrenagem
	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.f().s("#FFFFFF").ss(2,1,1).p("AANgVIgZAr");
	this.shape_12.setTransform(216.2,303.3);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ag3BfIBvi9");
	this.shape_13.setTransform(211.9,310.6);

	this.shape_14 = new cjs.Shape();
	this.shape_14.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhbCdIC3k5");
	this.shape_14.setTransform(208.3,316.8);

	this.shape_15 = new cjs.Shape();
	this.shape_15.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ah5DQIDzmf");
	this.shape_15.setTransform(205.3,321.8);

	this.shape_16 = new cjs.Shape();
	this.shape_16.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiQD3IEhnt");
	this.shape_16.setTransform(203,325.8);

	this.shape_17 = new cjs.Shape();
	this.shape_17.graphics.f().s("#FFFFFF").ss(2,1,1).p("AihETIFDol");
	this.shape_17.setTransform(201.3,328.6);

	this.shape_18 = new cjs.Shape();
	this.shape_18.graphics.f().s("#FFFFFF").ss(2,1,1).p("AirEkIFXpH");
	this.shape_18.setTransform(200.3,330.3);

	this.shape_19 = new cjs.Shape();
	this.shape_19.graphics.f().s("#FFFFFF").ss(2,1,1).p("ACvkpIldJT");
	this.shape_19.setTransform(200,330.8);

	this.shape_20 = new cjs.Shape();
	this.shape_20.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiXECIEvoD");
	this.shape_20.setTransform(202.3,326.9);

	this.shape_21 = new cjs.Shape();
	this.shape_21.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiADbIEBm1");
	this.shape_21.setTransform(204.6,322.9);

	this.shape_22 = new cjs.Shape();
	this.shape_22.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhoCzIDSll");
	this.shape_22.setTransform(207,319);

	this.shape_23 = new cjs.Shape();
	this.shape_23.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhSCMIClkX");
	this.shape_23.setTransform(209.3,315.1);

	this.shape_24 = new cjs.Shape();
	this.shape_24.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ag6BlIB1jJ");
	this.shape_24.setTransform(211.6,311.2);

	this.shape_25 = new cjs.Shape();
	this.shape_25.graphics.f().s("#FFFFFF").ss(2,1,1).p("AgjA9IBHh6");
	this.shape_25.setTransform(213.9,307.2);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_12}]},30).to({state:[{t:this.shape_13}]},1).to({state:[{t:this.shape_14}]},1).to({state:[{t:this.shape_15}]},1).to({state:[{t:this.shape_16}]},1).to({state:[{t:this.shape_17}]},1).to({state:[{t:this.shape_18}]},1).to({state:[{t:this.shape_19}]},1).to({state:[{t:this.shape_19}]},268).to({state:[{t:this.shape_20}]},1).to({state:[{t:this.shape_21}]},1).to({state:[{t:this.shape_22}]},1).to({state:[{t:this.shape_23}]},1).to({state:[{t:this.shape_24}]},1).to({state:[{t:this.shape_25}]},1).to({state:[{t:this.shape_12}]},1).to({state:[]},1).wait(41));

	// estatisticas
	this.instance_2 = new lib.estatistica();
	this.instance_2.parent = this;
	this.instance_2.setTransform(299.9,317.2,0.263,0.263,0,0,0,16.1,20.4);
	this.instance_2._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(24).to({_off:false},0).to({scaleX:1,scaleY:1,x:371.6,y:432.2},6,cjs.Ease.get(1)).wait(269).to({scaleX:0.26,scaleY:0.26,x:299.9,y:317.2},6).to({_off:true},1).wait(48));

	// L-estatisticas
	this.shape_26 = new cjs.Shape();
	this.shape_26.graphics.f().s("#FFFFFF").ss(2,1,1).p("AgRgfIAjA+");
	this.shape_26.setTransform(293.8,305.7);

	this.shape_27 = new cjs.Shape();
	this.shape_27.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhniyIDPFl");
	this.shape_27.setTransform(302.4,320.5);

	this.shape_28 = new cjs.Shape();
	this.shape_28.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiukrIFdJX");
	this.shape_28.setTransform(309.5,332.6);

	this.shape_29 = new cjs.Shape();
	this.shape_29.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjkmJIHJMT");
	this.shape_29.setTransform(315,342);

	this.shape_30 = new cjs.Shape();
	this.shape_30.graphics.f().s("#FFFFFF").ss(2,1,1).p("AkMnMIIZOZ");
	this.shape_30.setTransform(318.9,348.7);

	this.shape_31 = new cjs.Shape();
	this.shape_31.graphics.f().s("#FFFFFF").ss(2,1,1).p("Akjn0IJHPp");
	this.shape_31.setTransform(321.2,352.7);

	this.shape_32 = new cjs.Shape();
	this.shape_32.graphics.f().s("#FFFFFF").ss(2,1,1).p("AkroCIJXQF");
	this.shape_32.setTransform(322,354);

	this.shape_33 = new cjs.Shape();
	this.shape_33.graphics.f().s("#FFFFFF").ss(2,1,1).p("Aj8mxIH5Nj");
	this.shape_33.setTransform(317.3,346);

	this.shape_34 = new cjs.Shape();
	this.shape_34.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjNlhIGbLD");
	this.shape_34.setTransform(312.6,337.9);

	this.shape_35 = new cjs.Shape();
	this.shape_35.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiekQIE9Ih");
	this.shape_35.setTransform(307.9,329.9);

	this.shape_36 = new cjs.Shape();
	this.shape_36.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhvjAIDfGB");
	this.shape_36.setTransform(303.2,321.8);

	this.shape_37 = new cjs.Shape();
	this.shape_37.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhAhvICBDf");
	this.shape_37.setTransform(298.5,313.8);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_26}]},24).to({state:[{t:this.shape_27}]},1).to({state:[{t:this.shape_28}]},1).to({state:[{t:this.shape_29}]},1).to({state:[{t:this.shape_30}]},1).to({state:[{t:this.shape_31}]},1).to({state:[{t:this.shape_32}]},1).to({state:[{t:this.shape_32}]},269).to({state:[{t:this.shape_33}]},1).to({state:[{t:this.shape_34}]},1).to({state:[{t:this.shape_35}]},1).to({state:[{t:this.shape_36}]},1).to({state:[{t:this.shape_37}]},1).to({state:[{t:this.shape_26}]},1).to({state:[]},1).wait(48));

	// registro
	this.instance_3 = new lib.registro("synched",0);
	this.instance_3.parent = this;
	this.instance_3.setTransform(354.6,237.3,0.356,0.356,0,0,0,10.6,10.7);
	this.instance_3._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_3).wait(19).to({_off:false},0).to({regY:10.6,scaleX:2.29,scaleY:2.29,x:416.1,y:234.6},5,cjs.Ease.get(1)).wait(270).to({startPosition:0},0).to({regY:10.7,scaleX:0.36,scaleY:0.36,x:354.6,y:237.3},5).to({_off:true},1).wait(54));

	// L-registro
	this.shape_38 = new cjs.Shape();
	this.shape_38.graphics.f().s("#FFFFFF").ss(2,1,1).p("AgqAAIBVAA");
	this.shape_38.setTransform(343.3,237.6);

	this.shape_39 = new cjs.Shape();
	this.shape_39.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhqAAIDVAA");
	this.shape_39.setTransform(349.7,237.6);

	this.shape_40 = new cjs.Shape();
	this.shape_40.graphics.f().s("#FFFFFF").ss(2,1,1).p("AidAAIE7AA");
	this.shape_40.setTransform(354.8,237.6);

	this.shape_41 = new cjs.Shape();
	this.shape_41.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjBAAIGDAA");
	this.shape_41.setTransform(358.4,237.6);

	this.shape_42 = new cjs.Shape();
	this.shape_42.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjWAAIGtAA");
	this.shape_42.setTransform(360.5,237.6);

	this.shape_43 = new cjs.Shape();
	this.shape_43.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjeAAIG9AA");
	this.shape_43.setTransform(361.3,237.6);

	this.shape_44 = new cjs.Shape();
	this.shape_44.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ai5AAIF0AA");
	this.shape_44.setTransform(357.7,237.6);

	this.shape_45 = new cjs.Shape();
	this.shape_45.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiWAAIEtAA");
	this.shape_45.setTransform(354.1,237.6);

	this.shape_46 = new cjs.Shape();
	this.shape_46.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhxAAIDjAA");
	this.shape_46.setTransform(350.5,237.6);

	this.shape_47 = new cjs.Shape();
	this.shape_47.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhOAAICcAA");
	this.shape_47.setTransform(346.9,237.6);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_38}]},19).to({state:[{t:this.shape_39}]},1).to({state:[{t:this.shape_40}]},1).to({state:[{t:this.shape_41}]},1).to({state:[{t:this.shape_42}]},1).to({state:[{t:this.shape_43}]},1).to({state:[{t:this.shape_43}]},270).to({state:[{t:this.shape_44}]},1).to({state:[{t:this.shape_45}]},1).to({state:[{t:this.shape_46}]},1).to({state:[{t:this.shape_47}]},1).to({state:[{t:this.shape_38}]},1).to({state:[]},1).wait(54));

	// trabalhador
	this.instance_4 = new lib.trabalhador();
	this.instance_4.parent = this;
	this.instance_4.setTransform(302.3,154.8,0.128,0.128,0,0,0,25.8,25.8);
	this.instance_4._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(13).to({_off:false},0).to({regY:25.7,scaleX:1,scaleY:1,x:362.6,y:30.3},6,cjs.Ease.get(1)).wait(269).to({regY:25.8,scaleX:0.13,scaleY:0.13,x:302.3,y:154.8},6).to({_off:true},1).wait(59));

	// L-trabalhador
	this.shape_48 = new cjs.Shape();
	this.shape_48.graphics.f().s("#FFFFFF").ss(2,1,1).p("AggA4IBBhv");
	this.shape_48.setTransform(295.8,166.5);

	this.shape_49 = new cjs.Shape();
	this.shape_49.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ah2DOIDtmb");
	this.shape_49.setTransform(304.5,151.4);

	this.shape_50 = new cjs.Shape();
	this.shape_50.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ai+FJIF9qR");
	this.shape_50.setTransform(311.6,139.2);

	this.shape_51 = new cjs.Shape();
	this.shape_51.graphics.f().s("#FFFFFF").ss(2,1,1).p("Aj1GoIHrtQ");
	this.shape_51.setTransform(317.1,129.6);

	this.shape_52 = new cjs.Shape();
	this.shape_52.graphics.f().s("#FFFFFF").ss(2,1,1).p("AkdHtII7vZ");
	this.shape_52.setTransform(321.1,122.8);

	this.shape_53 = new cjs.Shape();
	this.shape_53.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ak0IWIJpwr");
	this.shape_53.setTransform(323.5,118.7);

	this.shape_54 = new cjs.Shape();
	this.shape_54.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ak9IkIJ7xH");
	this.shape_54.setTransform(324.3,117.3);

	this.shape_55 = new cjs.Shape();
	this.shape_55.graphics.f().s("#FFFFFF").ss(2,1,1).p("AkNHSIIbuj");
	this.shape_55.setTransform(319.5,125.5);

	this.shape_56 = new cjs.Shape();
	this.shape_56.graphics.f().s("#FFFFFF").ss(2,1,1).p("AjeGAIG9r/");
	this.shape_56.setTransform(314.8,133.7);

	this.shape_57 = new cjs.Shape();
	this.shape_57.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiuEuIFdpb");
	this.shape_57.setTransform(310,141.9);

	this.shape_58 = new cjs.Shape();
	this.shape_58.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ah/DcID/m3");
	this.shape_58.setTransform(305.3,150.1);

	this.shape_59 = new cjs.Shape();
	this.shape_59.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhPCKICfkT");
	this.shape_59.setTransform(300.5,158.3);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_48}]},13).to({state:[{t:this.shape_49}]},1).to({state:[{t:this.shape_50}]},1).to({state:[{t:this.shape_51}]},1).to({state:[{t:this.shape_52}]},1).to({state:[{t:this.shape_53}]},1).to({state:[{t:this.shape_54}]},1).to({state:[{t:this.shape_54}]},269).to({state:[{t:this.shape_55}]},1).to({state:[{t:this.shape_56}]},1).to({state:[{t:this.shape_57}]},1).to({state:[{t:this.shape_58}]},1).to({state:[{t:this.shape_59}]},1).to({state:[{t:this.shape_48}]},1).to({state:[]},1).wait(59));

	// relogio
	this.instance_5 = new lib.relogio();
	this.instance_5.parent = this;
	this.instance_5.setTransform(208.9,161.7,0.155,0.155,0,0,0,19.7,19.7);
	this.instance_5._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(7).to({_off:false},0).to({regY:19.8,scaleX:1,scaleY:1,x:168,y:91.8},6,cjs.Ease.get(1)).wait(269).to({regY:19.7,scaleX:0.16,scaleY:0.16,x:208.9,y:161.7},6).to({_off:true},1).wait(65));

	// L-relogio
	this.shape_60 = new cjs.Shape();
	this.shape_60.graphics.f().s("#FFFFFF").ss(2,1,1).p("AAQAaIgegz");
	this.shape_60.setTransform(213.5,169.5);

	this.shape_61 = new cjs.Shape();
	this.shape_61.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ag9hmIB7DO");
	this.shape_61.setTransform(208.8,161.7);

	this.shape_62 = new cjs.Shape();
	this.shape_62.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhjimIDHFN");
	this.shape_62.setTransform(205,155.4);

	this.shape_63 = new cjs.Shape();
	this.shape_63.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiBjYIECGx");
	this.shape_63.setTransform(202.1,150.4);

	this.shape_64 = new cjs.Shape();
	this.shape_64.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiVj7IEsH3");
	this.shape_64.setTransform(200,146.9);

	this.shape_65 = new cjs.Shape();
	this.shape_65.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiikQIFFIh");
	this.shape_65.setTransform(198.7,144.8);

	this.shape_66 = new cjs.Shape();
	this.shape_66.graphics.f().s("#FFFFFF").ss(2,1,1).p("ACoEYIlPov");
	this.shape_66.setTransform(198.3,144.1);

	this.shape_67 = new cjs.Shape();
	this.shape_67.graphics.f().s("#FFFFFF").ss(2,1,1).p("AiNjtIEbHb");
	this.shape_67.setTransform(200.8,148.3);

	this.shape_68 = new cjs.Shape();
	this.shape_68.graphics.f().s("#FFFFFF").ss(2,1,1).p("Ah0jCIDpGF");
	this.shape_68.setTransform(203.3,152.5);

	this.shape_69 = new cjs.Shape();
	this.shape_69.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhbiYIC3Ex");
	this.shape_69.setTransform(205.9,156.8);

	this.shape_70 = new cjs.Shape();
	this.shape_70.graphics.f().s("#FFFFFF").ss(2,1,1).p("AhBhuICDDd");
	this.shape_70.setTransform(208.4,161);

	this.shape_71 = new cjs.Shape();
	this.shape_71.graphics.f().s("#FFFFFF").ss(2,1,1).p("AgohDIBRCH");
	this.shape_71.setTransform(210.9,165.2);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape_60}]},7).to({state:[{t:this.shape_61}]},1).to({state:[{t:this.shape_62}]},1).to({state:[{t:this.shape_63}]},1).to({state:[{t:this.shape_64}]},1).to({state:[{t:this.shape_65}]},1).to({state:[{t:this.shape_66}]},1).to({state:[{t:this.shape_66}]},269).to({state:[{t:this.shape_67}]},1).to({state:[{t:this.shape_68}]},1).to({state:[{t:this.shape_69}]},1).to({state:[{t:this.shape_70}]},1).to({state:[{t:this.shape_71}]},1).to({state:[{t:this.shape_60}]},1).to({state:[]},1).wait(65));

	// laptop
	this.instance_6 = new lib.laptop();
	this.instance_6.parent = this;
	this.instance_6.setTransform(254.5,236.2,0.103,0.103,0,0,0,89.6,55.2);

	this.timeline.addTween(cjs.Tween.get(this.instance_6).to({regX:89.4,scaleX:1,scaleY:1},7).wait(347));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(470.3,460.5,18.4,11.4);
// library properties:
lib.properties = {
	width: 450,
	height: 460,
	fps: 30,
	color: "#FFFFFF",
	opacity: 0.00,
	webfonts: {},
	manifest: [],
	preloads: []
};




})(lib = lib||{}, images = images||{}, createjs = createjs||{}, ss = ss||{}, AdobeAn = AdobeAn||{});
var lib, images, createjs, ss, AdobeAn;
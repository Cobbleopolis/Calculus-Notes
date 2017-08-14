function computeYScale(width, height, xScale) {
    var xDiff = xScale[1] - xScale[0]
    var yDiff = height * xDiff / width
    return [-yDiff / 2, yDiff / 2]
}

var aspectRatio = 16 / 9
var width = 800;
var height = 400;

// desired xDomain values
var xScale = [-10, 10];
var yScale = [];

var defaultPlotOptions = {};

$(window).on('load', function() {
    width = $('div[role="main"]').width() * 0.95;
    heigth = aspectRatio * width;
    yScale = computeYScale(width, height, xScale);
    defaultPlotOptions = {
        width: width,
        height: height,
        xDomain: xScale,
        yDomain: yScale,
        xAxis: {
            type: 'linear',
            domain: xScale
        },
        yAxis: {
            type: 'linear',
            domain: yScale
        },
        grid: true
    };
    if (typeof onLoad === 'function')
        onLoad();
})

function plotFunction(target, data, options) {
    functionPlot(Object.assign(defaultPlotOptions, {
        target: target,
        data: data
    }, options));
}

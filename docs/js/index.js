function onLoad() {
    plotFunction("#graphTest", [{
        fn: 'x^2',
        derivative: {
            fn: '2x',
            updateOnMouseMove: true
        }
    }]);
}

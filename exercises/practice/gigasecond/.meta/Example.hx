using DateTools;

var gigasecond = 1000000000;

function add(moment: Date): Date {
    return moment.delta(DateTools.seconds(gigasecond));
}
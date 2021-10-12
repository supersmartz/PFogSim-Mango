function [] = plotAllPlots()
    %PLOTALLPLOTS Automatically detect app types present in output files
    %and create selected plots for each of them.
    %   To skip a plot, put a % at the beginning of the line.
    config = configuration.autoConfig();
    for i=1:length(config.AppTypes)
        appType = config.AppTypes(i);
        plotGenericResult(1, 2, 'Failed Tasks (%)', appType, 1);
        plotGenericResult(1, 5, 'Service Time (sec)', appType, 0);
        plotGenericResult(1, 6, 'Processing Time (sec)', appType, 0);
        plotGenericResult(1, 7, 'Average Network Delay (sec)', appType, 0);
        plotGenericResult(1, 8, 'Average VM Utilization (%)', appType, 1);
        plotGenericResult(1, 9, 'Average Cost ($)', appType, 0);
        plotGenericResult(1, 12, 'Avg. host util. (%)', appType, 1, '', 'linear');
        plotGenericResult(1, 13, 'Avg. network util. (%)', appType, 1, '', 'linear');
        plotGenericResult(2, 5, 'Service Time on Fog (sec)', appType, 0);
        plotGenericResult(2, 6, 'Processing Time on Cloudlet (sec)', appType, 0);
        plotGenericResult(2, 7, 'Average WLAN Delay (sec)', appType, 0);
        plotGenericResult(3, 5, 'Service Time on Cloud (sec)', appType, 0);
        plotGenericResult(3, 6, 'Processing Time on Cloud (sec)', appType, 0);
        plotGenericResult(3, 7, 'Average WAN Delay (sec)', appType, 0);
        plotGenericResult(4, 1, 'Average Distance (m)', appType, 0);
        plotGenericResult(4, 2, 'Average Hops', appType, 0);
        plotGenericResult(4, 3, 'Avg. no. of hosts searched', appType, 0, '', 'log');
        plotGenericResult(4, 4, 'Avg. no. of messages', appType, 0, '', 'log');
        plotGenericResult(10,1, 'Total Energy', appType, 0, '', 'linear');
        plotGenericResult(10,2, 'Dynamic Network Energy', appType, 0, '', 'linear');
        plotGenericResult(10,3, 'Dynamic Fog Node Energy', appType, 0, '', 'linear');
    end
end
for nz=[0 1000]
sim('subsystem1_smf')
figure(2)
plot(-2300:3550/2272:1250,smf_out.signals.values(:,:))
hold on
end
lol=max(smf_out.signals.values(:,:))
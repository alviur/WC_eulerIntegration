

%name = 'samples_time';
name = '/media/alexander/Lex_portable/IPL_color/imag_lumin_IPL_and_resp/samples_IPL_40x40_';
outout = '/media/alexander/Lex_portable/IPL_color/prepared4TF/';

g = 0.5;


for file = 1:21
    
    if(file~=22)
        % Load image batch here
        load([name,num2str(file),'.mat'])
        display(['Batch ',num2str(file),' loaded'])

        batchTest = zeros(10025,size(samplesA4y,2));

        for i=1:size(samplesA4y,2)
            i
            batchTest(:,i) = abs(samplesA4y(:,i)).^g;

        end

        save([outout,num2str(file),'.mat'],'batchTest')
        
         
    end

end
classdef Segmentation_srvResponse < robotics.ros.Message
    %Segmentation_srvResponse MATLAB implementation of segmentation/Segmentation_srvResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'segmentation/Segmentation_srvResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '5c2cf956b4b7a19f8a7ed1559cf70d00' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        SensorMsgsPointCloud2Class = robotics.ros.msg.internal.MessageFactory.getClassForType('sensor_msgs/PointCloud2') % Dispatch to MATLAB class for message type sensor_msgs/PointCloud2
    end
    
    properties (Dependent)
        SegmentedCloud
    end
    
    properties (Access = protected)
        Cache = struct('SegmentedCloud', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'SegmentedCloud'} % List of non-constant message properties
        ROSPropertyList = {'segmented_cloud'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Segmentation_srvResponse(msg)
            %Segmentation_srvResponse Construct the message object Segmentation_srvResponse
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function segmentedcloud = get.SegmentedCloud(obj)
            %get.SegmentedCloud Get the value for property SegmentedCloud
            if isempty(obj.Cache.SegmentedCloud)
                obj.Cache.SegmentedCloud = feval(obj.SensorMsgsPointCloud2Class, obj.JavaMessage.getSegmentedCloud);
            end
            segmentedcloud = obj.Cache.SegmentedCloud;
        end
        
        function set.SegmentedCloud(obj, segmentedcloud)
            %set.SegmentedCloud Set the value for property SegmentedCloud
            validateattributes(segmentedcloud, {obj.SensorMsgsPointCloud2Class}, {'nonempty', 'scalar'}, 'Segmentation_srvResponse', 'SegmentedCloud');
            
            obj.JavaMessage.setSegmentedCloud(segmentedcloud.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.SegmentedCloud)
                obj.Cache.SegmentedCloud.setJavaObject(segmentedcloud.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.SegmentedCloud = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.SegmentedCloud = copy(obj.SegmentedCloud);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.SegmentedCloud = feval([obj.SensorMsgsPointCloud2Class '.loadobj'], strObj.SegmentedCloud);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.SegmentedCloud = saveobj(obj.SegmentedCloud);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.segmentation.Segmentation_srvResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.segmentation.Segmentation_srvResponse;
            obj.reload(strObj);
        end
    end
end

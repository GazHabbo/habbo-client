
package com.sulake.habbo.communication.messages.parser.inventory.furni
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;
    import com.sulake.habbo.communication.messages.incoming.inventory.furni.FurniData;

    public class FurniListInsertParser implements IMessageParser 
    {

        protected var _furni:Array;

        public function parse(_arg_1:IMessageDataWrapper):Boolean
        {
            this._furni = new Array();
            var _local_2:int = 1;
            var _local_3:int;
            while (_local_3 < _local_2) {
                this._furni.push(this.parseItem(_arg_1));
                _local_3++;
            };
            return (true);
        }
        public function parseItem(_arg_1:IMessageDataWrapper):FurniData
        {
            var _local_14:String;
            var _local_15:int;
            var _local_2:int = _arg_1.readInteger();
            var _local_3:String = _arg_1.readString();
            var _local_4:int = _arg_1.readInteger();
            var _local_5:int = _arg_1.readInteger();
            var _local_6:int = _arg_1.readInteger();
            var _local_7:String = _arg_1.readString();
            var _local_8:Boolean = _arg_1.readBoolean();
            var _local_9:Boolean = _arg_1.readBoolean();
            var _local_10:Boolean = _arg_1.readBoolean();
            var _local_11:Boolean = _arg_1.readBoolean();
            var _local_12:int = _arg_1.readInteger();
            var _local_13:FurniData = new FurniData(_local_2, _local_3, _local_4, _local_5, _local_6, _local_7, _local_10, _local_8, _local_9, _local_11, _local_12);
            if (_local_3 == "S"){
                _local_14 = _arg_1.readString();
                _local_15 = _arg_1.readInteger();
                _local_13.setExtraData(_local_14, _local_15);
            };
            return (_local_13);
        }
        public function flush():Boolean
        {
            this._furni = null;
            return (true);
        }
        public function getFurni():Array
        {
            return (this._furni);
        }

    }
}//package com.sulake.habbo.communication.messages.parser.inventory.furni

// IMessageDataWrapper = "_-0Mb" (String#4014, DoABC#2)
// FurniData = "_-2AO" (String#19422, DoABC#2)
// FurniListInsertParser = "_-2oG" (String#21013, DoABC#2)
// readString = "_-2y7" (String#1973, DoABC#2)
// readBoolean = "_-0ZR" (String#1499, DoABC#2)
// _furni = "_-0nQ" (String#4579, DoABC#2)
// parseItem = "_-2t0" (String#21201, DoABC#2)
// setExtraData = "_-2NQ" (String#19941, DoABC#2)
// getFurni = "_-0B5" (String#3779, DoABC#2)
// IMessageParser = "_-5U" (String#7770, DoABC#2)



-- Trigger definitions for cos database
-- Generated: 2026-06-03 15:04:49

-- Trigger: trg_set_productid on public.products 
-- Name: products trg_set_productid; Type: TRIGGER; Schema: public; Owner: -
CREATE TRIGGER trg_set_productid BEFORE INSERT ON public.products FOR EACH ROW EXECUTE FUNCTION public.fcreateproductid();
 
-- Trigger: update_instant_card_applications_updated_at on public.instant_card_applications 
-- Name: instant_card_applications update_instant_card_applications_updated_at; Type: TRIGGER; Schema: public; Owner: -
CREATE TRIGGER update_instant_card_applications_updated_at BEFORE UPDATE ON public.instant_card_applications FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
 
-- Trigger: trigger_update_dispatch on public.dispatch 
-- Name: dispatch trigger_update_dispatch; Type: TRIGGER; Schema: public; Owner: -
CREATE TRIGGER trigger_update_dispatch BEFORE UPDATE ON public.dispatch FOR EACH ROW EXECUTE FUNCTION public.dispatch_updated_at_column();
 
-- Trigger: trg_instantcardcycle_status_updatebothflagtrue on public.instantcardcycle 
-- Name: instantcardcycle trg_instantcardcycle_status_updatebothflagtrue; Type: TRIGGER; Schema: public; Owner: -
CREATE TRIGGER trg_instantcardcycle_status_updatebothflagtrue BEFORE UPDATE OF bookedcardallocated, approvedcardsallocated ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
CREATE TRIGGER trigger_status_update_both_flags BEFORE UPDATE ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
 
-- Trigger: trigger_status_update_both_flags on public.instantcardcycle 
CREATE TRIGGER trg_instantcardcycle_status_updatebothflagtrue BEFORE UPDATE OF bookedcardallocated, approvedcardsallocated ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
-- Name: instantcardcycle trigger_status_update_both_flags; Type: TRIGGER; Schema: public; Owner: -
CREATE TRIGGER trigger_status_update_both_flags BEFORE UPDATE ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
 
